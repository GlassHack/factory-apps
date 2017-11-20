.class public Lcom/google/glass/lockrecovery/TutorialActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "TutorialActivity.java"


# static fields
.field static final MSG_NEXT_TUTORIAL_TIP:I = 0x2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MSG_TIMEOUT:I = 0x1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TIPS_DISPLAY_TIME_MS:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TUTORIAL_DISPLAY_TIME_MS:J

.field private static final TUTORIAL_TIPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TUTORIAL_VIDEO_DURATION_MS:J


# instance fields
.field handler:Landroid/os/Handler;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field nextTutorialTip:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private tutorialTextView:Landroid/widget/TextView;

.field private tutorialVideoView:Landroid/widget/VideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 32
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x13

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/lockrecovery/TutorialActivity;->TUTORIAL_VIDEO_DURATION_MS:J

    .line 33
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/lockrecovery/TutorialActivity;->TUTORIAL_DISPLAY_TIME_MS:J

    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    sget v2, Lcom/google/glass/lockrecovery/R$string;->tutorial_tips_1:I

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/google/glass/lockrecovery/R$string;->tutorial_tips_2:I

    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/google/glass/lockrecovery/R$string;->tutorial_tips_3:I

    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/google/glass/lockrecovery/R$string;->tutorial_tips_4:I

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/google/glass/lockrecovery/R$string;->tutorial_tips_5:I

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 35
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/glass/lockrecovery/TutorialActivity;->TUTORIAL_TIPS:Ljava/util/List;

    .line 43
    sget-wide v0, Lcom/google/glass/lockrecovery/TutorialActivity;->TUTORIAL_VIDEO_DURATION_MS:J

    sget-object v2, Lcom/google/glass/lockrecovery/TutorialActivity;->TUTORIAL_TIPS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    sput-wide v0, Lcom/google/glass/lockrecovery/TutorialActivity;->TIPS_DISPLAY_TIME_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/lockrecovery/TutorialActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/lockrecovery/TutorialActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/glass/lockrecovery/TutorialActivity;->updateTutorialText()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/lockrecovery/TutorialActivity;)Landroid/widget/VideoView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/lockrecovery/TutorialActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/lockrecovery/TutorialActivity;->tutorialVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method private updateTutorialText()V
    .locals 4

    .prologue
    .line 106
    iget-object v1, p0, Lcom/google/glass/lockrecovery/TutorialActivity;->tutorialTextView:Landroid/widget/TextView;

    sget-object v0, Lcom/google/glass/lockrecovery/TutorialActivity;->TUTORIAL_TIPS:Ljava/util/List;

    iget v2, p0, Lcom/google/glass/lockrecovery/TutorialActivity;->nextTutorialTip:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 107
    iget v0, p0, Lcom/google/glass/lockrecovery/TutorialActivity;->nextTutorialTip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/lockrecovery/TutorialActivity;->nextTutorialTip:I

    .line 109
    iget v0, p0, Lcom/google/glass/lockrecovery/TutorialActivity;->nextTutorialTip:I

    sget-object v1, Lcom/google/glass/lockrecovery/TutorialActivity;->TUTORIAL_TIPS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/google/glass/lockrecovery/TutorialActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    sget-wide v2, Lcom/google/glass/lockrecovery/TutorialActivity;->TIPS_DISPLAY_TIME_MS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public onConfirm()Z
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/google/glass/lockrecovery/TutorialActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 136
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 137
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/lockrecovery/TutorialActivity$3;

    invoke-direct {v1, p0}, Lcom/google/glass/lockrecovery/TutorialActivity$3;-><init>(Lcom/google/glass/lockrecovery/TutorialActivity;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 145
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/lockrecovery/TutorialActivity;->setResult(I)V

    .line 146
    invoke-virtual {p0}, Lcom/google/glass/lockrecovery/TutorialActivity;->finish()V

    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 64
    new-instance v1, Lcom/google/glass/lockrecovery/TutorialActivity$1;

    invoke-direct {v1, p0}, Lcom/google/glass/lockrecovery/TutorialActivity$1;-><init>(Lcom/google/glass/lockrecovery/TutorialActivity;)V

    iput-object v1, p0, Lcom/google/glass/lockrecovery/TutorialActivity;->handler:Landroid/os/Handler;

    .line 79
    sget v1, Lcom/google/glass/lockrecovery/R$id;->lockscreen_tutorial_video_view:I

    invoke-virtual {p0, v1}, Lcom/google/glass/lockrecovery/TutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    iput-object v1, p0, Lcom/google/glass/lockrecovery/TutorialActivity;->tutorialVideoView:Landroid/widget/VideoView;

    .line 80
    iget-object v1, p0, Lcom/google/glass/lockrecovery/TutorialActivity;->tutorialVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 82
    iget-object v1, p0, Lcom/google/glass/lockrecovery/TutorialActivity;->tutorialVideoView:Landroid/widget/VideoView;

    new-instance v2, Lcom/google/glass/lockrecovery/TutorialActivity$2;

    invoke-direct {v2, p0}, Lcom/google/glass/lockrecovery/TutorialActivity$2;-><init>(Lcom/google/glass/lockrecovery/TutorialActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 91
    sget v1, Lcom/google/glass/lockrecovery/R$raw;->lockscreen_background:I

    invoke-static {p0, v1}, Lcom/google/glass/util/IconProvider;->buildDrawableUri(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 92
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/glass/lockrecovery/TutorialActivity;->tutorialVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 94
    sget v1, Lcom/google/glass/lockrecovery/R$id;->lockscreen_tutorial_text:I

    invoke-virtual {p0, v1}, Lcom/google/glass/lockrecovery/TutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/glass/lockrecovery/TutorialActivity;->tutorialTextView:Landroid/widget/TextView;

    .line 96
    iput v3, p0, Lcom/google/glass/lockrecovery/TutorialActivity;->nextTutorialTip:I

    .line 97
    invoke-direct {p0}, Lcom/google/glass/lockrecovery/TutorialActivity;->updateTutorialText()V

    .line 98
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 2
    .param p1, "action"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/google/glass/lockrecovery/TutorialActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/lockrecovery/TutorialActivity;->setResult(I)V

    .line 155
    invoke-virtual {p0}, Lcom/google/glass/lockrecovery/TutorialActivity;->finish()V

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method protected onPauseInternal()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPauseInternal()V

    .line 127
    iget-object v0, p0, Lcom/google/glass/lockrecovery/TutorialActivity;->tutorialVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 128
    iget-object v0, p0, Lcom/google/glass/lockrecovery/TutorialActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    iget-object v0, p0, Lcom/google/glass/lockrecovery/TutorialActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 130
    return-void
.end method

.method protected onResumeInternal()V
    .locals 4

    .prologue
    .line 118
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 119
    iget-object v0, p0, Lcom/google/glass/lockrecovery/TutorialActivity;->tutorialVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 120
    iget-object v0, p0, Lcom/google/glass/lockrecovery/TutorialActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-wide v2, Lcom/google/glass/lockrecovery/TutorialActivity;->TUTORIAL_DISPLAY_TIME_MS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 121
    iget-object v0, p0, Lcom/google/glass/lockrecovery/TutorialActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    sget-wide v2, Lcom/google/glass/lockrecovery/TutorialActivity;->TIPS_DISPLAY_TIME_MS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 122
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 102
    sget v0, Lcom/google/glass/lockrecovery/R$layout;->lockscreen_tutorial_activity:I

    return v0
.end method

.method protected shouldAllowCameraButton()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method
