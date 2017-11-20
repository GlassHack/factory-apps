.class public Lcom/google/glass/videoplayer/widget/PlayerView;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FADE_DURATION_MS:I = 0xc8

.field private static final LOADING_ERROR_TIMEOUT_MS:J

.field private static final LOADING_WARNING_TIMEOUT_MS:J

.field public static final TIMEBAR_DURATION_MS:I = 0xbb8

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field final card:Landroid/widget/FrameLayout;

.field private final context:Landroid/content/Context;

.field errorMsgView:Lcom/google/glass/widget/TipsView;

.field private final hideErrorMessageRunnable:Ljava/lang/Runnable;

.field private final hideLoadingScreenRunnable:Ljava/lang/Runnable;

.field private final hideTimeBarRunnable:Ljava/lang/Runnable;

.field private final keepScreenOnRunnable:Ljava/lang/Runnable;

.field final overlayView:Landroid/widget/ImageView;

.field private final showErrorMessageRunnable:Ljava/lang/Runnable;

.field private final showPlayRunnable:Ljava/lang/Runnable;

.field slider:Lcom/google/android/glass/widget/Slider$Indeterminate;

.field final thumbnailView:Landroid/widget/ImageView;

.field final timebarView:Lcom/google/glass/videoplayer/widget/TimeBarView;

.field final tipsView:Lcom/google/glass/widget/TipsView;

.field final videoView:Landroid/view/TextureView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/videoplayer/widget/PlayerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 52
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/videoplayer/widget/PlayerView;->LOADING_WARNING_TIMEOUT_MS:J

    .line 55
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/videoplayer/widget/PlayerView;->LOADING_ERROR_TIMEOUT_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/google/glass/videoplayer/VideoPlayer;)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v0, Lcom/google/glass/videoplayer/widget/PlayerView$2;

    invoke-direct {v0, p0}, Lcom/google/glass/videoplayer/widget/PlayerView$2;-><init>(Lcom/google/glass/videoplayer/widget/PlayerView;)V

    iput-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->keepScreenOnRunnable:Ljava/lang/Runnable;

    .line 208
    new-instance v0, Lcom/google/glass/videoplayer/widget/PlayerView$3;

    invoke-direct {v0, p0}, Lcom/google/glass/videoplayer/widget/PlayerView$3;-><init>(Lcom/google/glass/videoplayer/widget/PlayerView;)V

    iput-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->hideTimeBarRunnable:Ljava/lang/Runnable;

    .line 215
    new-instance v0, Lcom/google/glass/videoplayer/widget/PlayerView$4;

    invoke-direct {v0, p0}, Lcom/google/glass/videoplayer/widget/PlayerView$4;-><init>(Lcom/google/glass/videoplayer/widget/PlayerView;)V

    iput-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->hideLoadingScreenRunnable:Ljava/lang/Runnable;

    .line 222
    new-instance v0, Lcom/google/glass/videoplayer/widget/PlayerView$5;

    invoke-direct {v0, p0}, Lcom/google/glass/videoplayer/widget/PlayerView$5;-><init>(Lcom/google/glass/videoplayer/widget/PlayerView;)V

    iput-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->showPlayRunnable:Ljava/lang/Runnable;

    .line 230
    new-instance v0, Lcom/google/glass/videoplayer/widget/PlayerView$6;

    invoke-direct {v0, p0}, Lcom/google/glass/videoplayer/widget/PlayerView$6;-><init>(Lcom/google/glass/videoplayer/widget/PlayerView;)V

    iput-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->showErrorMessageRunnable:Ljava/lang/Runnable;

    .line 238
    new-instance v0, Lcom/google/glass/videoplayer/widget/PlayerView$7;

    invoke-direct {v0, p0}, Lcom/google/glass/videoplayer/widget/PlayerView$7;-><init>(Lcom/google/glass/videoplayer/widget/PlayerView;)V

    iput-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->hideErrorMessageRunnable:Ljava/lang/Runnable;

    .line 91
    iput-object p1, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->context:Landroid/content/Context;

    .line 93
    sget v0, Lcom/google/glass/videoplayer/R$id;->video_texture_view:I

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->videoView:Landroid/view/TextureView;

    .line 94
    sget v0, Lcom/google/glass/videoplayer/R$id;->timebar_view:I

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/videoplayer/widget/TimeBarView;

    iput-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->timebarView:Lcom/google/glass/videoplayer/widget/TimeBarView;

    .line 95
    sget v0, Lcom/google/glass/videoplayer/R$id;->buffering_text:I

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TipsView;

    iput-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->tipsView:Lcom/google/glass/widget/TipsView;

    .line 96
    sget v0, Lcom/google/glass/videoplayer/R$id;->overlay_image_view:I

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->overlayView:Landroid/widget/ImageView;

    .line 97
    sget v0, Lcom/google/glass/videoplayer/R$id;->error_msg:I

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TipsView;

    iput-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->errorMsgView:Lcom/google/glass/widget/TipsView;

    .line 98
    sget v0, Lcom/google/glass/videoplayer/R$id;->thumbnail_image_view:I

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->thumbnailView:Landroid/widget/ImageView;

    .line 99
    iput-object p2, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->card:Landroid/widget/FrameLayout;

    .line 101
    new-instance v0, Lcom/google/glass/videoplayer/widget/PlayerView$1;

    invoke-direct {v0, p0, p2}, Lcom/google/glass/videoplayer/widget/PlayerView$1;-><init>(Lcom/google/glass/videoplayer/widget/PlayerView;Landroid/widget/FrameLayout;)V

    invoke-virtual {p3, v0}, Lcom/google/glass/videoplayer/VideoPlayer;->setViewListener(Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;)V

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/videoplayer/widget/PlayerView;Z)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/glass/videoplayer/widget/PlayerView;->keepScreenOn(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/videoplayer/widget/PlayerView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->hideErrorMessageRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/videoplayer/widget/PlayerView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->hideLoadingScreenRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/videoplayer/widget/PlayerView;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/glass/videoplayer/widget/PlayerView;->showTimeBar()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/videoplayer/widget/PlayerView;III)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/videoplayer/widget/PlayerView;->updateTimeBar(III)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/videoplayer/widget/PlayerView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->showPlayRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/videoplayer/widget/PlayerView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->keepScreenOnRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/videoplayer/widget/PlayerView;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/glass/videoplayer/widget/PlayerView;->showTimeStamp()V

    return-void
.end method

.method static synthetic access$800()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/glass/videoplayer/widget/PlayerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private keepScreenOn(Z)V
    .locals 3

    .prologue
    const/high16 v1, -0x80000000

    .line 176
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    if-eqz p1, :cond_1

    .line 180
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 185
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->videoView:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setKeepScreenOn(Z)V

    .line 186
    sget-object v0, Lcom/google/glass/videoplayer/widget/PlayerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "keeyScreenOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method private showTimeBar()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    sget-object v0, Lcom/google/glass/videoplayer/widget/PlayerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Show the time bar."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->card:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->hideTimeBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 156
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->timebarView:Lcom/google/glass/videoplayer/widget/TimeBarView;

    invoke-virtual {v0}, Lcom/google/glass/videoplayer/widget/TimeBarView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->timebarView:Lcom/google/glass/videoplayer/widget/TimeBarView;

    invoke-virtual {v0, v3}, Lcom/google/glass/videoplayer/widget/TimeBarView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->context:Landroid/content/Context;

    sget v1, Lcom/google/glass/videoplayer/R$anim;->timebar_enter:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 160
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 161
    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->timebarView:Lcom/google/glass/videoplayer/widget/TimeBarView;

    invoke-virtual {v1, v0}, Lcom/google/glass/videoplayer/widget/TimeBarView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->card:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->hideTimeBarRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    return-void
.end method

.method private showTimeStamp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 193
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->tipsView:Lcom/google/glass/widget/TipsView;

    invoke-virtual {v0, v3}, Lcom/google/glass/widget/TipsView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->tipsView:Lcom/google/glass/widget/TipsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TipsView;->setAlpha(F)V

    .line 195
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->tipsView:Lcom/google/glass/widget/TipsView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TipsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 196
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 197
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 198
    sget-object v0, Lcom/google/glass/videoplayer/widget/PlayerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "pauseVideo"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method private updateTimeBar(III)V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->timebarView:Lcom/google/glass/videoplayer/widget/TimeBarView;

    invoke-virtual {v0}, Lcom/google/glass/videoplayer/widget/TimeBarView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 173
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->timebarView:Lcom/google/glass/videoplayer/widget/TimeBarView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/glass/videoplayer/widget/TimeBarView;->setTime(III)V

    .line 171
    sget-object v0, Lcom/google/glass/videoplayer/widget/PlayerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x4d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "upateTimeBar curTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " totalTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " percent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method hideLoadingScreen()Z
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x0

    .line 358
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 360
    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->slider:Lcom/google/android/glass/widget/Slider$Indeterminate;

    if-nez v1, :cond_0

    .line 361
    sget-object v1, Lcom/google/glass/videoplayer/widget/PlayerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No need to hide the loading screen."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    :goto_0
    return v0

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->slider:Lcom/google/android/glass/widget/Slider$Indeterminate;

    invoke-interface {v1}, Lcom/google/android/glass/widget/Slider$Indeterminate;->hide()V

    .line 366
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->slider:Lcom/google/android/glass/widget/Slider$Indeterminate;

    .line 368
    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 369
    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->overlayView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 371
    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->card:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->showErrorMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 372
    sget-object v1, Lcom/google/glass/videoplayer/widget/PlayerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Hide the video loading screen."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    const/4 v0, 0x1

    goto :goto_0
.end method

.method hideTimeBar()Z
    .locals 5

    .prologue
    const-wide/16 v3, 0xc8

    const/4 v0, 0x0

    .line 378
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 380
    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->timebarView:Lcom/google/glass/videoplayer/widget/TimeBarView;

    invoke-virtual {v1}, Lcom/google/glass/videoplayer/widget/TimeBarView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 381
    sget-object v1, Lcom/google/glass/videoplayer/widget/PlayerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No need to hide the video time bar."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    :goto_0
    return v0

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->context:Landroid/content/Context;

    sget v2, Lcom/google/glass/videoplayer/R$anim;->timebar_exit:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 386
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 387
    new-instance v2, Lcom/google/glass/videoplayer/widget/PlayerView$11;

    invoke-direct {v2, p0}, Lcom/google/glass/videoplayer/widget/PlayerView$11;-><init>(Lcom/google/glass/videoplayer/widget/PlayerView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 395
    iget-object v2, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->timebarView:Lcom/google/glass/videoplayer/widget/TimeBarView;

    invoke-virtual {v2, v1}, Lcom/google/glass/videoplayer/widget/TimeBarView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 396
    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->tipsView:Lcom/google/glass/widget/TipsView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TipsView;->setAlpha(F)V

    .line 397
    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->tipsView:Lcom/google/glass/widget/TipsView;

    invoke-virtual {v1}, Lcom/google/glass/widget/TipsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    .line 398
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 399
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 400
    sget-object v1, Lcom/google/glass/videoplayer/widget/PlayerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Hide the video time bar"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 313
    new-instance v0, Lcom/google/glass/videoplayer/widget/PlayerView$10;

    iget-object v2, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->context:Landroid/content/Context;

    .line 314
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/util/CachedBitmapFactory;

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v7, 0x1

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/videoplayer/widget/PlayerView$10;-><init>(Lcom/google/glass/videoplayer/widget/PlayerView;Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Ljava/lang/String;III)V

    .line 332
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    invoke-virtual {v1, v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->load(Lcom/google/glass/deferredcontent/LoadingTask;)V

    .line 333
    sget-object v0, Lcom/google/glass/videoplayer/widget/PlayerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "setThumbnailUrl"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    return-void
.end method

.method public showErrorMessage(I)V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->errorMsgView:Lcom/google/glass/widget/TipsView;

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/TipsView;->setText(I)V

    .line 257
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->card:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->showErrorMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 258
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->card:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->hideLoadingScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 259
    return-void
.end method

.method public showLoadingScreen()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v1, 0x8

    .line 337
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 339
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->errorMsgView:Lcom/google/glass/widget/TipsView;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TipsView;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->timebarView:Lcom/google/glass/videoplayer/widget/TimeBarView;

    invoke-virtual {v0, v1}, Lcom/google/glass/videoplayer/widget/TimeBarView;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->tipsView:Lcom/google/glass/widget/TipsView;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TipsView;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->slider:Lcom/google/android/glass/widget/Slider$Indeterminate;

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->card:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/google/android/glass/widget/Slider;->from(Landroid/view/View;)Lcom/google/android/glass/widget/Slider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/glass/widget/Slider;->startIndeterminate()Lcom/google/android/glass/widget/Slider$Indeterminate;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->slider:Lcom/google/android/glass/widget/Slider$Indeterminate;

    .line 349
    :goto_0
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->card:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->showErrorMessageRunnable:Ljava/lang/Runnable;

    sget-wide v2, Lcom/google/glass/videoplayer/widget/PlayerView;->LOADING_WARNING_TIMEOUT_MS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 351
    invoke-direct {p0, v4}, Lcom/google/glass/videoplayer/widget/PlayerView;->keepScreenOn(Z)V

    .line 352
    sget-object v0, Lcom/google/glass/videoplayer/widget/PlayerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Show the video loading screen."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    return v4

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->slider:Lcom/google/android/glass/widget/Slider$Indeterminate;

    invoke-interface {v0}, Lcom/google/android/glass/widget/Slider$Indeterminate;->show()V

    goto :goto_0
.end method

.method showOverlayAnimation(Z)I
    .locals 6

    .prologue
    const-wide/16 v4, 0xc8

    .line 275
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 277
    if-eqz p1, :cond_0

    .line 279
    sget v0, Lcom/google/glass/videoplayer/R$drawable;->ic_play_overlay_150:I

    .line 283
    :goto_0
    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->overlayView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 285
    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->overlayView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->context:Landroid/content/Context;

    sget v2, Lcom/google/glass/videoplayer/R$anim;->videoview_center_overlay_fade_in:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 289
    iget-object v2, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->context:Landroid/content/Context;

    sget v3, Lcom/google/glass/videoplayer/R$anim;->videoview_center_overlay_fade_out:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 291
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 292
    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 294
    new-instance v3, Lcom/google/glass/videoplayer/widget/PlayerView$8;

    invoke-direct {v3, p0, v2}, Lcom/google/glass/videoplayer/widget/PlayerView$8;-><init>(Lcom/google/glass/videoplayer/widget/PlayerView;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 300
    new-instance v3, Lcom/google/glass/videoplayer/widget/PlayerView$9;

    invoke-direct {v3, p0}, Lcom/google/glass/videoplayer/widget/PlayerView$9;-><init>(Lcom/google/glass/videoplayer/widget/PlayerView;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 306
    iget-object v2, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->overlayView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 307
    return v0

    .line 281
    :cond_0
    sget v0, Lcom/google/glass/videoplayer/R$drawable;->ic_pause_overlay_150:I

    goto :goto_0
.end method

.method showSlowLoadWarning()V
    .locals 4

    .prologue
    .line 262
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 264
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->errorMsgView:Lcom/google/glass/widget/TipsView;

    sget v1, Lcom/google/glass/videoplayer/R$string;->loading_difficulty:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TipsView;->setText(I)V

    .line 265
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->card:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->showErrorMessageRunnable:Ljava/lang/Runnable;

    sget-wide v2, Lcom/google/glass/videoplayer/widget/PlayerView;->LOADING_ERROR_TIMEOUT_MS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 266
    return-void
.end method

.method updateTimeBarView(III)V
    .locals 5

    .prologue
    .line 248
    if-ltz p1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->timebarView:Lcom/google/glass/videoplayer/widget/TimeBarView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/glass/videoplayer/widget/TimeBarView;->setTime(III)V

    .line 250
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView;->tipsView:Lcom/google/glass/widget/TipsView;

    int-to-long v1, p1

    int-to-long v3, p2

    invoke-static {v1, v2, v3, v4}, Lcom/google/glass/videoplayer/util/Utils;->stringForTime(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TipsView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :cond_0
    return-void
.end method
