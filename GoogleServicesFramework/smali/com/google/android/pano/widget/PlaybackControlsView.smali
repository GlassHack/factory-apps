.class public Lcom/google/android/pano/widget/PlaybackControlsView;
.super Lcom/google/android/pano/widget/AbsControlsView;
.source "PlaybackControlsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;,
        Lcom/google/android/pano/widget/PlaybackControlsView$Listener;
    }
.end annotation


# static fields
.field private static final ICON_STATE_PROPS:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;


# instance fields
.field protected mCapabilities:I

.field protected mDuration:I

.field protected mDurationView:Landroid/widget/TextView;

.field protected mFfwView:Lcom/google/android/pano/widget/SeekButton;

.field protected mHandledDown:Z

.field protected mHandler:Landroid/os/Handler;

.field protected mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field protected mJoystickTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

.field protected mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

.field protected mNextDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

.field protected mNextView:Landroid/widget/ImageButton;

.field protected mOldSeekValue:F

.field protected mPadTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

.field protected mPauseDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

.field protected mPlayDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

.field protected mPlayView:Landroid/widget/ImageButton;

.field protected mPlaystate:I

.field protected mPosition:I

.field protected mPositionUpdateTime:J

.field protected mPositionView:Landroid/widget/TextView;

.field protected mPrevBehavior:I

.field protected mPrevDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

.field protected mPrevSeconds:I

.field protected mPrevView:Landroid/widget/ImageButton;

.field protected mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field protected mRes:Landroid/content/res/Resources;

.field protected mResumed:Z

.field protected mRetryDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

.field protected mRwView:Lcom/google/android/pano/widget/SeekButton;

.field protected mSeekBar:Landroid/widget/SeekBar;

.field private mSeekButtonPosition:F

.field protected mSeekHasFocus:Z

.field protected mSupportsFfw:Z

.field private mSupportsNext:Z

.field private mSupportsPrev:Z

.field protected mSupportsRw:Z

.field protected mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field protected mUpdatePeriod:I

.field private mUpdatePlayPauseRunnable:Ljava/lang/Runnable;

.field private mUpdatePositionRunnable:Ljava/lang/Runnable;

.field private mUpdateViewsRunnable:Ljava/lang/Runnable;

.field protected mUpdatingPositionText:Z

.field protected mViewsReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 159
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    sput-object v0, Lcom/google/android/pano/widget/PlaybackControlsView;->ICON_STATE_PROPS:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    .line 160
    sget-object v0, Lcom/google/android/pano/widget/PlaybackControlsView;->ICON_STATE_PROPS:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    new-instance v1, Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    invoke-direct {v1}, Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;-><init>()V

    aput-object v1, v0, v2

    .line 161
    sget-object v0, Lcom/google/android/pano/widget/PlaybackControlsView;->ICON_STATE_PROPS:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    aget-object v0, v0, v2

    const/16 v1, 0xff

    iput v1, v0, Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;->alpha:I

    .line 162
    sget-object v0, Lcom/google/android/pano/widget/PlaybackControlsView;->ICON_STATE_PROPS:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    aget-object v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;->scale:F

    .line 163
    sget-object v0, Lcom/google/android/pano/widget/PlaybackControlsView;->ICON_STATE_PROPS:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    aget-object v1, v0, v2

    sget-object v0, Lcom/google/android/pano/widget/PlaybackControlsView;->ENABLED_FOCUSED_STATE_SET:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;->state:[I

    .line 164
    sget-object v0, Lcom/google/android/pano/widget/PlaybackControlsView;->ICON_STATE_PROPS:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    new-instance v1, Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    invoke-direct {v1}, Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;-><init>()V

    aput-object v1, v0, v3

    .line 165
    sget-object v0, Lcom/google/android/pano/widget/PlaybackControlsView;->ICON_STATE_PROPS:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    aget-object v0, v0, v3

    const/16 v1, 0x64

    iput v1, v0, Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;->alpha:I

    .line 166
    sget-object v0, Lcom/google/android/pano/widget/PlaybackControlsView;->ICON_STATE_PROPS:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    aget-object v0, v0, v3

    const v1, 0x3f3ae148    # 0.73f

    iput v1, v0, Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;->scale:F

    .line 167
    sget-object v0, Lcom/google/android/pano/widget/PlaybackControlsView;->ICON_STATE_PROPS:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    aget-object v1, v0, v3

    sget-object v0, Lcom/google/android/pano/widget/PlaybackControlsView;->EMPTY_STATE_SET:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;->state:[I

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/pano/widget/PlaybackControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 263
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 266
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/widget/AbsControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 192
    new-instance v0, Lcom/google/android/pano/widget/PlaybackControlsView$1;

    invoke-direct {v0, p0}, Lcom/google/android/pano/widget/PlaybackControlsView$1;-><init>(Lcom/google/android/pano/widget/PlaybackControlsView;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mUpdatePositionRunnable:Ljava/lang/Runnable;

    .line 199
    new-instance v0, Lcom/google/android/pano/widget/PlaybackControlsView$2;

    invoke-direct {v0, p0}, Lcom/google/android/pano/widget/PlaybackControlsView$2;-><init>(Lcom/google/android/pano/widget/PlaybackControlsView;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mUpdateViewsRunnable:Ljava/lang/Runnable;

    .line 206
    new-instance v0, Lcom/google/android/pano/widget/PlaybackControlsView$3;

    invoke-direct {v0, p0}, Lcom/google/android/pano/widget/PlaybackControlsView$3;-><init>(Lcom/google/android/pano/widget/PlaybackControlsView;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mUpdatePlayPauseRunnable:Ljava/lang/Runnable;

    .line 233
    iput v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlaystate:I

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mOldSeekValue:F

    .line 236
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mUpdatePeriod:I

    .line 237
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionUpdateTime:J

    .line 238
    iput v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPosition:I

    .line 239
    iput v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    .line 240
    iput v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevSeconds:I

    .line 242
    new-instance v0, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    invoke-direct {v0, p0}, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;-><init>(Lcom/google/android/pano/widget/PlaybackControlsView;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mJoystickTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    .line 243
    new-instance v0, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    invoke-direct {v0, p0}, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;-><init>(Lcom/google/android/pano/widget/PlaybackControlsView;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPadTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    .line 244
    new-instance v0, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    invoke-direct {v0, p0}, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;-><init>(Lcom/google/android/pano/widget/PlaybackControlsView;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    .line 248
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandler:Landroid/os/Handler;

    .line 254
    iput-boolean v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandledDown:Z

    .line 255
    iput-boolean v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekHasFocus:Z

    .line 256
    iput-boolean v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mResumed:Z

    .line 259
    iput-boolean v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mUpdatingPositionText:Z

    .line 267
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->setupViews()V

    .line 268
    return-void
.end method

.method private cancelJoystickSeek()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 710
    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mJoystickTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget-boolean v1, v1, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->seeking:Z

    if-eqz v1, :cond_0

    .line 711
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/pano/widget/PlaybackControlsView;->onSeek(IF)V

    .line 712
    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mJoystickTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iput-boolean v0, v1, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->seeking:Z

    .line 713
    const/4 v0, 0x1

    .line 715
    :cond_0
    return v0
.end method

.method private sendOnSeek(IF)V
    .locals 4
    .param p1, "direction"    # I
    .param p2, "magnitude"    # F

    .prologue
    .line 772
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 774
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/widget/AbsControlsView$Listener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/pano/widget/AbsControlsView$Listener;

    .line 775
    .local v1, "listener":Lcom/google/android/pano/widget/AbsControlsView$Listener;
    instance-of v3, v1, Lcom/google/android/pano/widget/PlaybackControlsView$Listener;

    if-eqz v3, :cond_0

    .line 776
    check-cast v1, Lcom/google/android/pano/widget/PlaybackControlsView$Listener;

    .end local v1    # "listener":Lcom/google/android/pano/widget/AbsControlsView$Listener;
    invoke-interface {v1, p1, p2}, Lcom/google/android/pano/widget/PlaybackControlsView$Listener;->onSeek(IF)V

    goto :goto_0

    .line 779
    :cond_1
    return-void
.end method


# virtual methods
.method protected cancelPadSeek()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 719
    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPadTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget-boolean v1, v1, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->seeking:Z

    if-eqz v1, :cond_0

    .line 720
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/pano/widget/PlaybackControlsView;->onSeek(IF)V

    .line 721
    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPadTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iput-boolean v0, v1, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->seeking:Z

    .line 722
    const/4 v0, 0x1

    .line 724
    :cond_0
    return v0
.end method

.method public cancelSeek()Z
    .locals 2

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->cancelPadSeek()Z

    move-result v0

    .line 705
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->cancelJoystickSeek()Z

    move-result v1

    or-int/2addr v0, v1

    .line 706
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 615
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v5

    const/high16 v6, 0x200000

    and-int/2addr v5, v6

    const/high16 v6, 0x200000

    if-ne v5, v6, :cond_0

    .line 619
    invoke-super {p0, p1}, Lcom/google/android/pano/widget/AbsControlsView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    .line 666
    :goto_0
    return v4

    .line 621
    :cond_0
    const/4 v0, 0x0

    .line 622
    .local v0, "diff":F
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_1

    iget-boolean v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandledDown:Z

    if-eqz v5, :cond_1

    .line 623
    iput-boolean v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandledDown:Z

    goto :goto_0

    .line 626
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlayView:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekHasFocus:Z

    if-eqz v5, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->handlesHorizontalGestures()Z

    move-result v5

    if-nez v5, :cond_4

    .line 629
    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/pano/widget/AbsControlsView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0

    .line 631
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 632
    .local v1, "keyCode":I
    const/16 v5, 0x15

    if-ne v1, v5, :cond_6

    .line 633
    const v0, -0x41b33333    # -0.2f

    .line 637
    :cond_5
    :goto_1
    cmpl-float v5, v0, v7

    if-eqz v5, :cond_c

    .line 638
    iget-object v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget v6, v5, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    add-float/2addr v6, v0

    iput v6, v5, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    .line 639
    iget-object v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget v5, v5, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_7

    iget-boolean v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsRw:Z

    if-nez v5, :cond_7

    .line 640
    iget-object v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget-boolean v2, v4, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->seeking:Z

    .line 641
    .local v2, "wasSeeking":Z
    invoke-virtual {p0, v3, v7}, Lcom/google/android/pano/widget/PlaybackControlsView;->onSeek(IF)V

    .line 642
    invoke-virtual {p0, v7}, Lcom/google/android/pano/widget/PlaybackControlsView;->setSeekPosition(F)V

    .line 643
    iput-boolean v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandledDown:Z

    move v4, v2

    .line 644
    goto :goto_0

    .line 634
    .end local v2    # "wasSeeking":Z
    :cond_6
    const/16 v5, 0x16

    if-ne v1, v5, :cond_5

    .line 635
    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_1

    .line 646
    :cond_7
    iget-object v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget v5, v5, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_8

    iget-boolean v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsFfw:Z

    if-nez v5, :cond_8

    .line 647
    iget-object v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget-boolean v2, v4, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->seeking:Z

    .line 648
    .restart local v2    # "wasSeeking":Z
    invoke-virtual {p0, v3, v7}, Lcom/google/android/pano/widget/PlaybackControlsView;->onSeek(IF)V

    .line 649
    invoke-virtual {p0, v7}, Lcom/google/android/pano/widget/PlaybackControlsView;->setSeekPosition(F)V

    .line 650
    iput-boolean v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandledDown:Z

    move v4, v2

    .line 651
    goto :goto_0

    .line 654
    .end local v2    # "wasSeeking":Z
    :cond_8
    iget-object v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget v5, v5, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    cmpl-float v5, v5, v9

    if-lez v5, :cond_b

    .line 655
    iget-object v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iput v9, v5, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    .line 659
    :cond_9
    :goto_2
    iget-object v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget-object v6, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget v6, v6, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_a

    move v3, v4

    :cond_a
    iput-boolean v3, v5, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->seeking:Z

    .line 660
    iget-object v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget v3, v3, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-int v3, v3

    iget-object v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget v5, v5, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/google/android/pano/widget/PlaybackControlsView;->onSeek(IF)V

    .line 661
    iget-object v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget v3, v3, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    invoke-virtual {p0, v3}, Lcom/google/android/pano/widget/PlaybackControlsView;->setSeekPosition(F)V

    .line 662
    iput-boolean v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandledDown:Z

    goto/16 :goto_0

    .line 656
    :cond_b
    iget-object v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget v5, v5, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    cmpg-float v5, v5, v8

    if-gez v5, :cond_9

    .line 657
    iget-object v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iput v8, v5, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    goto :goto_2

    .line 665
    :cond_c
    iput-boolean v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandledDown:Z

    .line 666
    invoke-super {p0, p1}, Lcom/google/android/pano/widget/AbsControlsView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0
.end method

.method protected focusDefaultView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 899
    iget-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekHasFocus:Z

    if-eqz v0, :cond_2

    .line 900
    iget-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsRw:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekButtonPosition:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 901
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/SeekButton;->requestFocus()Z

    .line 908
    :cond_0
    :goto_0
    return-void

    .line 902
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsFfw:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekButtonPosition:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/SeekButton;->requestFocus()Z

    goto :goto_0

    .line 906
    :cond_2
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlayView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_0
.end method

.method protected handleJoystickEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 728
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 729
    .local v1, "newJoystickX":F
    iget-object v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mJoystickTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget v4, v4, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_1

    .line 730
    iget-object v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mJoystickTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iput v1, v3, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    .line 731
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 732
    .local v0, "absJoystickX":F
    const v3, 0x3e4ccccd    # 0.2f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    .line 733
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/android/pano/widget/PlaybackControlsView;->setSeekPosition(F)V

    .line 734
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->cancelSeek()Z

    move-result v2

    .line 742
    .end local v0    # "absJoystickX":F
    :goto_0
    return v2

    .line 736
    .restart local v0    # "absJoystickX":F
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v3, v0}, Lcom/google/android/pano/widget/PlaybackControlsView;->onSeek(IF)V

    .line 737
    iget-object v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mJoystickTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iput-boolean v2, v3, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->seeking:Z

    .line 738
    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/PlaybackControlsView;->setSeekPosition(F)V

    goto :goto_0

    .end local v0    # "absJoystickX":F
    :cond_1
    move v2, v3

    .line 742
    goto :goto_0
.end method

.method public handlesHorizontalGestures()Z
    .locals 1

    .prologue
    .line 523
    iget-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsRw:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsFfw:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initDefaults()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 783
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRes:Landroid/content/res/Resources;

    .line 784
    iput v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mCapabilities:I

    .line 785
    iput v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevBehavior:I

    .line 786
    new-instance v0, Lcom/google/android/pano/widget/StateScaledDrawable;

    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/pano/R$drawable;->ic_playback_rwd:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Lcom/google/android/pano/widget/PlaybackControlsView;->ICON_STATE_PROPS:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    invoke-direct {v0, v1, v2}, Lcom/google/android/pano/widget/StateScaledDrawable;-><init>(Landroid/graphics/drawable/Drawable;[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    .line 788
    new-instance v0, Lcom/google/android/pano/widget/StateScaledDrawable;

    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/pano/R$drawable;->ic_playback_fwd:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Lcom/google/android/pano/widget/PlaybackControlsView;->ICON_STATE_PROPS:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    invoke-direct {v0, v1, v2}, Lcom/google/android/pano/widget/StateScaledDrawable;-><init>(Landroid/graphics/drawable/Drawable;[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mNextDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    .line 790
    new-instance v0, Lcom/google/android/pano/widget/StateScaledDrawable;

    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/pano/R$drawable;->ic_playback_pause:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Lcom/google/android/pano/widget/PlaybackControlsView;->ICON_STATE_PROPS:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    invoke-direct {v0, v1, v2}, Lcom/google/android/pano/widget/StateScaledDrawable;-><init>(Landroid/graphics/drawable/Drawable;[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPauseDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    .line 792
    new-instance v0, Lcom/google/android/pano/widget/StateScaledDrawable;

    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/pano/R$drawable;->ic_playback_play:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Lcom/google/android/pano/widget/PlaybackControlsView;->ICON_STATE_PROPS:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    invoke-direct {v0, v1, v2}, Lcom/google/android/pano/widget/StateScaledDrawable;-><init>(Landroid/graphics/drawable/Drawable;[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlayDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    .line 794
    new-instance v0, Lcom/google/android/pano/widget/StateScaledDrawable;

    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/pano/R$drawable;->ic_playback_replay:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Lcom/google/android/pano/widget/PlaybackControlsView;->ICON_STATE_PROPS:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    invoke-direct {v0, v1, v2}, Lcom/google/android/pano/widget/StateScaledDrawable;-><init>(Landroid/graphics/drawable/Drawable;[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRetryDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    .line 796
    return-void
.end method

.method protected initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 800
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 801
    .local v13, "res":Landroid/content/res/Resources;
    sget-object v15, Lcom/google/android/pano/R$styleable;->PlaybackControllerView:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 803
    .local v3, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    .line 804
    .local v7, "capabilities":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 805
    .local v2, "N":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v2, :cond_1

    .line 806
    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    .line 807
    .local v6, "attr":I
    packed-switch v6, :pswitch_data_0

    .line 805
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 809
    :pswitch_0
    const/4 v15, 0x0

    invoke-virtual {v3, v6, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 810
    or-int/lit8 v7, v7, 0x40

    goto :goto_1

    .line 814
    :pswitch_1
    const/4 v15, 0x0

    invoke-virtual {v3, v6, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 815
    or-int/lit16 v7, v7, 0x80

    goto :goto_1

    .line 819
    :pswitch_2
    const/4 v15, 0x0

    invoke-virtual {v3, v6, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 820
    or-int/lit8 v7, v7, 0x4

    goto :goto_1

    .line 824
    :pswitch_3
    const/4 v15, 0x0

    invoke-virtual {v3, v6, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 825
    or-int/lit8 v7, v7, 0x10

    goto :goto_1

    .line 829
    :pswitch_4
    const/4 v15, 0x0

    invoke-virtual {v3, v6, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 830
    or-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 834
    :pswitch_5
    const/4 v15, 0x0

    invoke-virtual {v3, v6, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 835
    or-int/lit8 v7, v7, 0x2

    goto :goto_1

    .line 839
    :pswitch_6
    sget v15, Lcom/google/android/pano/R$drawable;->ic_playback_fwd:I

    invoke-virtual {v3, v6, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 840
    .local v9, "nextRes":I
    new-instance v15, Lcom/google/android/pano/widget/StateScaledDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRes:Landroid/content/res/Resources;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    sget-object v17, Lcom/google/android/pano/widget/PlaybackControlsView;->ICON_STATE_PROPS:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    invoke-direct/range {v15 .. v17}, Lcom/google/android/pano/widget/StateScaledDrawable;-><init>(Landroid/graphics/drawable/Drawable;[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mNextDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    goto :goto_1

    .line 844
    .end local v9    # "nextRes":I
    :pswitch_7
    sget v15, Lcom/google/android/pano/R$drawable;->ic_playback_rwd:I

    invoke-virtual {v3, v6, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 845
    .local v12, "prevRes":I
    new-instance v15, Lcom/google/android/pano/widget/StateScaledDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRes:Landroid/content/res/Resources;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    sget-object v17, Lcom/google/android/pano/widget/PlaybackControlsView;->ICON_STATE_PROPS:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    invoke-direct/range {v15 .. v17}, Lcom/google/android/pano/widget/StateScaledDrawable;-><init>(Landroid/graphics/drawable/Drawable;[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    goto :goto_1

    .line 849
    .end local v12    # "prevRes":I
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    const/16 v16, 0x0

    sget v17, Lcom/google/android/pano/R$drawable;->ic_playback_scrub_fwd:I

    move/from16 v0, v17

    invoke-virtual {v3, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Lcom/google/android/pano/widget/SeekButton;->setResource(II)V

    goto/16 :goto_1

    .line 853
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    const/16 v16, 0x0

    sget v17, Lcom/google/android/pano/R$drawable;->ic_playback_scrub_rwd:I

    move/from16 v0, v17

    invoke-virtual {v3, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Lcom/google/android/pano/widget/SeekButton;->setResource(II)V

    goto/16 :goto_1

    .line 857
    :pswitch_a
    sget v15, Lcom/google/android/pano/R$drawable;->ic_playback_play:I

    invoke-virtual {v3, v6, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 858
    .local v11, "playRes":I
    new-instance v15, Lcom/google/android/pano/widget/StateScaledDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRes:Landroid/content/res/Resources;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    sget-object v17, Lcom/google/android/pano/widget/PlaybackControlsView;->ICON_STATE_PROPS:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    invoke-direct/range {v15 .. v17}, Lcom/google/android/pano/widget/StateScaledDrawable;-><init>(Landroid/graphics/drawable/Drawable;[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlayDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    goto/16 :goto_1

    .line 862
    .end local v11    # "playRes":I
    :pswitch_b
    sget v15, Lcom/google/android/pano/R$drawable;->ic_playback_pause:I

    invoke-virtual {v3, v6, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 863
    .local v10, "pauseRes":I
    new-instance v15, Lcom/google/android/pano/widget/StateScaledDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRes:Landroid/content/res/Resources;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    sget-object v17, Lcom/google/android/pano/widget/PlaybackControlsView;->ICON_STATE_PROPS:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    invoke-direct/range {v15 .. v17}, Lcom/google/android/pano/widget/StateScaledDrawable;-><init>(Landroid/graphics/drawable/Drawable;[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPauseDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    goto/16 :goto_1

    .line 867
    .end local v10    # "pauseRes":I
    :pswitch_c
    const/16 v15, 0x66

    invoke-virtual {v3, v6, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    .line 868
    .local v5, "alpha":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v15, v5}, Lcom/google/android/pano/widget/SeekButton;->setButtonAlpha(I)V

    .line 869
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v15, v5}, Lcom/google/android/pano/widget/SeekButton;->setButtonAlpha(I)V

    goto/16 :goto_1

    .line 872
    .end local v5    # "alpha":I
    :pswitch_d
    const/16 v15, 0xff

    invoke-virtual {v3, v6, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    .line 873
    .local v4, "activeAlpha":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v15, v4}, Lcom/google/android/pano/widget/SeekButton;->setButtonActiveAlpha(I)V

    .line 874
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v15, v4}, Lcom/google/android/pano/widget/SeekButton;->setButtonActiveAlpha(I)V

    goto/16 :goto_1

    .line 877
    .end local v4    # "activeAlpha":I
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    const/16 v16, 0x1

    sget v17, Lcom/google/android/pano/R$drawable;->ic_playback_scrubber_line:I

    move/from16 v0, v17

    invoke-virtual {v3, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Lcom/google/android/pano/widget/SeekButton;->setResource(II)V

    goto/16 :goto_1

    .line 881
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    const/16 v16, 0x1

    sget v17, Lcom/google/android/pano/R$drawable;->ic_playback_scrubber_line_reverse:I

    move/from16 v0, v17

    invoke-virtual {v3, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Lcom/google/android/pano/widget/SeekButton;->setResource(II)V

    goto/16 :goto_1

    .line 885
    :pswitch_10
    sget v15, Lcom/google/android/pano/R$drawable;->ic_playback_replay:I

    invoke-virtual {v3, v6, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 886
    .local v14, "retryRes":I
    new-instance v15, Lcom/google/android/pano/widget/StateScaledDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRes:Landroid/content/res/Resources;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    sget-object v17, Lcom/google/android/pano/widget/PlaybackControlsView;->ICON_STATE_PROPS:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    invoke-direct/range {v15 .. v17}, Lcom/google/android/pano/widget/StateScaledDrawable;-><init>(Landroid/graphics/drawable/Drawable;[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRetryDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    goto/16 :goto_1

    .line 891
    .end local v6    # "attr":I
    .end local v14    # "retryRes":I
    :cond_1
    if-eqz v7, :cond_2

    .line 892
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/pano/widget/PlaybackControlsView;->setCapabilities(I)V

    .line 894
    :cond_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 895
    return-void

    .line 807
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_e
        :pswitch_f
        :pswitch_a
        :pswitch_b
        :pswitch_10
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 506
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/PlaybackControlsView;->sendOnClick(I)V

    .line 507
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->handlesHorizontalGestures()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/PlaybackControlsView;->handleJoystickEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    const/4 v0, 0x1

    .line 518
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/pano/widget/AbsControlsView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSeek(IF)V
    .locals 9
    .param p1, "direction"    # I
    .param p2, "magnitude"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 746
    int-to-float v4, p1

    mul-float v0, v4, p2

    .line 747
    .local v0, "seekValue":F
    iget v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mOldSeekValue:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    move v1, v2

    .line 748
    .local v1, "significantMove":Z
    :goto_0
    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 769
    :goto_1
    return-void

    .end local v1    # "significantMove":Z
    :cond_0
    move v1, v3

    .line 747
    goto :goto_0

    .line 753
    .restart local v1    # "significantMove":Z
    :cond_1
    iget v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mOldSeekValue:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_3

    cmpl-float v4, v0, v8

    if-eqz v4, :cond_3

    .line 754
    invoke-virtual {p0, v2}, Lcom/google/android/pano/widget/PlaybackControlsView;->sendOnActiveChange(Z)V

    .line 758
    :cond_2
    :goto_2
    iput v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mOldSeekValue:F

    .line 759
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/widget/PlaybackControlsView;->sendOnSeek(IF)V

    .line 763
    iget-object v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    if-eqz p1, :cond_4

    :goto_3
    iput-boolean v2, v4, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->seeking:Z

    .line 764
    iget-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v3, p2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    div-double/2addr v3, v5

    int-to-double v5, p1

    mul-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    goto :goto_1

    .line 755
    :cond_3
    iget v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mOldSeekValue:F

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_2

    cmpl-float v4, v0, v8

    if-nez v4, :cond_2

    .line 756
    invoke-virtual {p0, v3}, Lcom/google/android/pano/widget/PlaybackControlsView;->sendOnActiveChange(Z)V

    goto :goto_2

    :cond_4
    move v2, v3

    .line 763
    goto :goto_3
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 912
    if-ne p0, p1, :cond_0

    if-eqz p2, :cond_0

    .line 913
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->cancelSeek()Z

    .line 915
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/pano/widget/AbsControlsView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 916
    return-void
.end method

.method protected remeasurePositionView()V
    .locals 11

    .prologue
    const/high16 v10, -0x80000000

    .line 1065
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->getPaddingRight()I

    move-result v9

    sub-int v7, v8, v9

    .line 1066
    .local v7, "width":I
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->getPaddingBottom()I

    move-result v9

    sub-int v1, v8, v9

    .line 1067
    .local v1, "childHeight":I
    int-to-float v8, v7

    const v9, 0x3f4ccccd    # 0.8f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1069
    .local v3, "childWidthSpec":I
    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1070
    .local v2, "childHeightSpec":I
    iget-object v8, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    invoke-virtual {v8, v3, v2}, Landroid/widget/TextView;->measure(II)V

    .line 1071
    iget-object v8, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLeft()I

    move-result v4

    .line 1072
    .local v4, "left":I
    iget-object v8, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getBottom()I

    move-result v0

    .line 1073
    .local v0, "bottom":I
    iget-object v8, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    add-int v5, v4, v8

    .line 1074
    .local v5, "right":I
    iget-object v8, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    sub-int v6, v0, v8

    .line 1075
    .local v6, "top":I
    iget-object v8, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    invoke-virtual {v8, v4, v6, v5, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 1076
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->focusDefaultView()V

    .line 679
    const/4 v0, 0x1

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 671
    iget-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mUpdatingPositionText:Z

    if-nez v0, :cond_0

    .line 672
    invoke-super {p0}, Lcom/google/android/pano/widget/AbsControlsView;->requestLayout()V

    .line 674
    :cond_0
    return-void
.end method

.method public setCapabilities(I)V
    .locals 2
    .param p1, "capabilities"    # I

    .prologue
    .line 286
    iput p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mCapabilities:I

    .line 287
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mUpdateViewsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 288
    return-void
.end method

.method public setSeekPosition(F)V
    .locals 4
    .param p1, "position"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 470
    const v0, 0x3e19999a    # 0.15f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsFfw:Z

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/SeekButton;->setFocusable(Z)V

    .line 473
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/SeekButton;->requestFocus()Z

    .line 474
    iput-boolean v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekHasFocus:Z

    .line 487
    :cond_0
    :goto_0
    iput p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekButtonPosition:F

    .line 488
    iget v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekButtonPosition:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3da3d70a    # 0.08f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 489
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v0, v2}, Lcom/google/android/pano/widget/SeekButton;->updatePosition(F)V

    .line 490
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v0, v2}, Lcom/google/android/pano/widget/SeekButton;->updatePosition(F)V

    .line 498
    :goto_1
    return-void

    .line 475
    :cond_1
    const v0, -0x41e66666    # -0.15f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsRw:Z

    if-eqz v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/SeekButton;->setFocusable(Z)V

    .line 478
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/SeekButton;->requestFocus()Z

    .line 479
    iput-boolean v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekHasFocus:Z

    goto :goto_0

    .line 480
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekHasFocus:Z

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v0, v3}, Lcom/google/android/pano/widget/SeekButton;->setFocusable(Z)V

    .line 483
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v0, v3}, Lcom/google/android/pano/widget/SeekButton;->setFocusable(Z)V

    .line 484
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlayView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 485
    iput-boolean v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekHasFocus:Z

    goto :goto_0

    .line 491
    :cond_3
    iget v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekButtonPosition:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 492
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    iget v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekButtonPosition:F

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/SeekButton;->updatePosition(F)V

    .line 493
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v0, v2}, Lcom/google/android/pano/widget/SeekButton;->updatePosition(F)V

    goto :goto_1

    .line 495
    :cond_4
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v0, v2}, Lcom/google/android/pano/widget/SeekButton;->updatePosition(F)V

    .line 496
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    iget v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekButtonPosition:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/SeekButton;->updatePosition(F)V

    goto :goto_1
.end method

.method protected setupViews()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 919
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 920
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/google/android/pano/R$layout;->default_controller_view:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 922
    sget v1, Lcom/google/android/pano/R$id;->controller_prev:I

    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/PlaybackControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevView:Landroid/widget/ImageButton;

    .line 923
    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevView:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 924
    sget v1, Lcom/google/android/pano/R$id;->controller_playpause:I

    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/PlaybackControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlayView:Landroid/widget/ImageButton;

    .line 925
    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlayView:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 926
    sget v1, Lcom/google/android/pano/R$id;->controller_next:I

    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/PlaybackControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mNextView:Landroid/widget/ImageButton;

    .line 927
    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mNextView:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 928
    sget v1, Lcom/google/android/pano/R$id;->controller_rw:I

    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/PlaybackControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/pano/widget/SeekButton;

    iput-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    .line 929
    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v1, p0}, Lcom/google/android/pano/widget/SeekButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 930
    sget v1, Lcom/google/android/pano/R$id;->controller_ffw:I

    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/PlaybackControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/pano/widget/SeekButton;

    iput-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    .line 931
    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v1, p0}, Lcom/google/android/pano/widget/SeekButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 933
    sget v1, Lcom/google/android/pano/R$id;->controller_seekBar:I

    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/PlaybackControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    .line 934
    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 935
    sget v1, Lcom/google/android/pano/R$id;->controller_time:I

    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/PlaybackControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    .line 936
    sget v1, Lcom/google/android/pano/R$id;->controller_duration:I

    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/PlaybackControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDurationView:Landroid/widget/TextView;

    .line 938
    iput-boolean v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mViewsReady:Z

    .line 939
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->updateViews()V

    .line 940
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->updatePlayPause()V

    .line 941
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->updatePosition()V

    .line 942
    return-void
.end method

.method protected updatePlayPause()V
    .locals 2

    .prologue
    .line 945
    iget-boolean v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mViewsReady:Z

    if-nez v1, :cond_1

    .line 967
    :cond_0
    :goto_0
    return-void

    .line 948
    :cond_1
    const/4 v0, 0x0

    .line 950
    .local v0, "drawable":Lcom/google/android/pano/widget/StateScaledDrawable;
    iget v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlaystate:I

    packed-switch v1, :pswitch_data_0

    .line 964
    :goto_1
    :pswitch_0
    if-eqz v0, :cond_0

    .line 965
    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlayView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 952
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlayDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    .line 953
    goto :goto_1

    .line 955
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPauseDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    .line 956
    goto :goto_1

    .line 958
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRetryDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    .line 959
    goto :goto_1

    .line 961
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlayDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    goto :goto_1

    .line 950
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected updatePosition()V
    .locals 19

    .prologue
    .line 974
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mViewsReady:Z

    if-nez v15, :cond_1

    .line 1062
    :cond_0
    :goto_0
    return-void

    .line 977
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDurationView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    const/16 v17, -0x1

    move/from16 v0, v17

    if-le v15, v0, :cond_8

    const/4 v15, 0x0

    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    const/16 v17, -0x1

    move/from16 v0, v17

    if-le v15, v0, :cond_9

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPosition:I

    const/16 v17, -0x1

    move/from16 v0, v17

    if-le v15, v0, :cond_9

    const/4 v15, 0x0

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPosition:I

    const/16 v17, -0x1

    move/from16 v0, v17

    if-le v15, v0, :cond_a

    const/4 v15, 0x0

    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 981
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/SeekBar;->getMax()I

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    .line 982
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    int-to-long v15, v15

    const-wide/32 v17, 0x36ee80

    div-long v15, v15, v17

    long-to-int v4, v15

    .line 983
    .local v4, "hours":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    int-to-long v15, v15

    const-wide/32 v17, 0x36ee80

    rem-long v15, v15, v17

    const-wide/32 v17, 0xea60

    div-long v15, v15, v17

    long-to-int v6, v15

    .line 985
    .local v6, "minutes":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    int-to-long v15, v15

    const-wide/32 v17, 0xea60

    rem-long v15, v15, v17

    const-wide/16 v17, 0x3e8

    div-long v15, v15, v17

    long-to-int v11, v15

    .line 987
    .local v11, "seconds":I
    if-nez v4, :cond_b

    .line 988
    const-string v15, "%d:%02d"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 992
    .local v3, "duration":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDurationView:Landroid/widget/TextView;

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 993
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/SeekBar;->setMax(I)V

    .line 996
    .end local v3    # "duration":Ljava/lang/String;
    .end local v4    # "hours":I
    .end local v6    # "minutes":I
    .end local v11    # "seconds":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mUpdatePositionRunnable:Ljava/lang/Runnable;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 997
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPosition:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_0

    .line 998
    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPosition:I

    .line 999
    .local v8, "position":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlaystate:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionUpdateTime:J

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-lez v15, :cond_3

    .line 1000
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionUpdateTime:J

    move-wide/from16 v17, v0

    sub-long v15, v15, v17

    long-to-int v15, v15

    add-int/2addr v8, v15

    .line 1002
    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    if-le v8, v15, :cond_4

    .line 1003
    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    .line 1006
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v15}, Landroid/widget/SeekBar;->getProgress()I

    move-result v15

    if-eq v8, v15, :cond_7

    .line 1007
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v15, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1008
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mUpdatingPositionText:Z

    .line 1009
    div-int/lit16 v12, v8, 0x3e8

    .line 1011
    .local v12, "totalSeconds":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevSeconds:I

    if-eq v15, v12, :cond_5

    .line 1012
    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevSeconds:I

    .line 1013
    int-to-long v15, v8

    const-wide/32 v17, 0x36ee80

    div-long v15, v15, v17

    long-to-int v4, v15

    .line 1014
    .restart local v4    # "hours":I
    int-to-long v15, v8

    const-wide/32 v17, 0x36ee80

    rem-long v15, v15, v17

    const-wide/32 v17, 0xea60

    div-long v15, v15, v17

    long-to-int v6, v15

    .line 1016
    .restart local v6    # "minutes":I
    int-to-long v15, v8

    const-wide/32 v17, 0xea60

    rem-long v15, v15, v17

    const-wide/16 v17, 0x3e8

    div-long v15, v15, v17

    long-to-int v11, v15

    .line 1018
    .restart local v11    # "seconds":I
    if-nez v4, :cond_c

    .line 1019
    const-string v15, "%d:%02d"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1024
    .local v9, "positionString":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1025
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->remeasurePositionView()V

    .line 1028
    .end local v4    # "hours":I
    .end local v6    # "minutes":I
    .end local v9    # "positionString":Ljava/lang/String;
    .end local v11    # "seconds":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v15}, Landroid/widget/SeekBar;->getWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v16

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v14, v15

    .line 1030
    .local v14, "width":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v15}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/SeekBar;->getLeft()I

    move-result v16

    add-int v15, v15, v16

    int-to-float v7, v15

    .line 1031
    .local v7, "offset":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v16

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v10, v15

    .line 1034
    .local v10, "positionWidth":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_d

    .line 1035
    int-to-float v15, v8

    mul-float/2addr v15, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v16, v10, v16

    sub-float v15, v15, v16

    add-float v13, v15, v7

    .line 1039
    .local v13, "translation":F
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->getWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getWidth()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->getPaddingLeft()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->getPaddingRight()I

    move-result v16

    sub-int v5, v15, v16

    .line 1041
    .local v5, "maxTranslation":I
    cmpg-float v15, v13, v7

    if-gez v15, :cond_e

    .line 1042
    move v13, v7

    .line 1046
    :cond_6
    :goto_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 1047
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mUpdatingPositionText:Z

    .line 1050
    .end local v5    # "maxTranslation":I
    .end local v7    # "offset":F
    .end local v10    # "positionWidth":F
    .end local v12    # "totalSeconds":I
    .end local v13    # "translation":F
    .end local v14    # "width":F
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mResumed:Z

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlaystate:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionUpdateTime:J

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-lez v15, :cond_0

    .line 1057
    rem-int/lit16 v15, v8, 0x3e8

    rsub-int v15, v15, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mUpdatePeriod:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1059
    .local v2, "delay":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mUpdatePositionRunnable:Ljava/lang/Runnable;

    move-object/from16 v16, v0

    int-to-long v0, v2

    move-wide/from16 v17, v0

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 977
    .end local v2    # "delay":I
    .end local v8    # "position":I
    :cond_8
    const/4 v15, 0x4

    goto/16 :goto_1

    .line 978
    :cond_9
    const/4 v15, 0x4

    goto/16 :goto_2

    .line 979
    :cond_a
    const/4 v15, 0x4

    goto/16 :goto_3

    .line 990
    .restart local v4    # "hours":I
    .restart local v6    # "minutes":I
    .restart local v11    # "seconds":I
    :cond_b
    const-string v15, "%d:%02d:%02d"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "duration":Ljava/lang/String;
    goto/16 :goto_4

    .line 1021
    .end local v3    # "duration":Ljava/lang/String;
    .restart local v8    # "position":I
    .restart local v12    # "totalSeconds":I
    :cond_c
    const-string v15, "%d:%02d:%02d"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "positionString":Ljava/lang/String;
    goto/16 :goto_5

    .line 1037
    .end local v4    # "hours":I
    .end local v6    # "minutes":I
    .end local v9    # "positionString":Ljava/lang/String;
    .end local v11    # "seconds":I
    .restart local v7    # "offset":F
    .restart local v10    # "positionWidth":F
    .restart local v14    # "width":F
    :cond_d
    sub-float v15, v14, v10

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    add-float v13, v15, v7

    .restart local v13    # "translation":F
    goto/16 :goto_6

    .line 1043
    .restart local v5    # "maxTranslation":I
    :cond_e
    int-to-float v15, v5

    cmpl-float v15, v13, v15

    if-lez v15, :cond_6

    .line 1044
    int-to-float v13, v5

    goto/16 :goto_7
.end method

.method protected updateViews()V
    .locals 7

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1079
    iget-boolean v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mViewsReady:Z

    if-nez v2, :cond_1

    .line 1110
    :cond_0
    :goto_0
    return-void

    .line 1082
    :cond_1
    iget v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mCapabilities:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsRw:Z

    .line 1083
    iget v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mCapabilities:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsPrev:Z

    .line 1084
    iget-boolean v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsPrev:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsRw:Z

    if-nez v2, :cond_6

    move v1, v3

    .line 1085
    .local v1, "usePrev":Z
    :goto_3
    iget-object v6, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevView:Landroid/widget/ImageButton;

    if-eqz v1, :cond_7

    move v2, v4

    :goto_4
    invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1086
    iget-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevView:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1087
    iget-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevView:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1088
    iget-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevView:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1090
    iget v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mCapabilities:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_8

    move v2, v3

    :goto_5
    iput-boolean v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsFfw:Z

    .line 1091
    iget v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mCapabilities:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_9

    move v2, v3

    :goto_6
    iput-boolean v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsNext:Z

    .line 1092
    iget-boolean v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsNext:Z

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsFfw:Z

    if-nez v2, :cond_a

    move v0, v3

    .line 1093
    .local v0, "useNext":Z
    :goto_7
    iget-object v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mNextView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_b

    move v2, v4

    :goto_8
    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1094
    iget-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mNextView:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1095
    iget-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mNextView:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1096
    iget-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mNextView:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mNextDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1098
    iget-object v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    iget-boolean v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsRw:Z

    if-eqz v2, :cond_c

    move v2, v4

    :goto_9
    invoke-virtual {v3, v2}, Lcom/google/android/pano/widget/SeekButton;->setVisibility(I)V

    .line 1099
    iget-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    iget-boolean v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsFfw:Z

    if-eqz v3, :cond_d

    :goto_a
    invoke-virtual {v2, v4}, Lcom/google/android/pano/widget/SeekButton;->setVisibility(I)V

    .line 1101
    iget-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 1102
    iget-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 1104
    :cond_2
    iget-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 1105
    iget-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1107
    :cond_3
    iget-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 1108
    iget-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .end local v0    # "useNext":Z
    .end local v1    # "usePrev":Z
    :cond_4
    move v2, v4

    .line 1082
    goto/16 :goto_1

    :cond_5
    move v2, v4

    .line 1083
    goto/16 :goto_2

    :cond_6
    move v1, v4

    .line 1084
    goto/16 :goto_3

    .restart local v1    # "usePrev":Z
    :cond_7
    move v2, v5

    .line 1085
    goto/16 :goto_4

    :cond_8
    move v2, v4

    .line 1090
    goto :goto_5

    :cond_9
    move v2, v4

    .line 1091
    goto :goto_6

    :cond_a
    move v0, v4

    .line 1092
    goto :goto_7

    .restart local v0    # "useNext":Z
    :cond_b
    move v2, v5

    .line 1093
    goto :goto_8

    :cond_c
    move v2, v5

    .line 1098
    goto :goto_9

    :cond_d
    move v4, v5

    .line 1099
    goto :goto_a
.end method
