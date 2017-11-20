.class public Lcom/google/glass/share/ShareDraftFragment;
.super Lcom/google/glass/app/GlassFragment;
.source "ShareDraftFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/share/ShareDraftFragment$Listener;
    }
.end annotation


# static fields
.field private static final DRAFT_VIEW_DURATION_MILLIS:J = 0xfa0L


# instance fields
.field countdownRunning:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private gradientView:Landroid/view/View;

.field private listener:Lcom/google/glass/share/ShareDraftFragment$Listener;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private progressBar:Lcom/google/glass/widget/ProgressBar;

.field private readCallback:Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;

.field private timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field timelineItemAdapter:Lcom/google/glass/timeline/ui/TimelineItemAdapter;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private tipsView:Lcom/google/glass/widget/TipsView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/glass/app/GlassFragment;-><init>()V

    .line 38
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/share/ShareDraftFragment;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 55
    return-void
.end method

.method static synthetic access$002(Lcom/google/glass/share/ShareDraftFragment;Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;)Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/share/ShareDraftFragment;
    .param p1, "x1"    # Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/glass/share/ShareDraftFragment;->readCallback:Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/glass/share/ShareDraftFragment;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/share/ShareDraftFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/share/ShareDraftFragment;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/share/ShareDraftFragment;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/share/ShareDraftFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/share/ShareDraftFragment;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/share/ShareDraftFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/share/ShareDraftFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/glass/share/ShareDraftFragment;->showShareDraftTipsView(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/share/ShareDraftFragment;)Lcom/google/glass/share/ShareDraftFragment$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/share/ShareDraftFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/share/ShareDraftFragment;->listener:Lcom/google/glass/share/ShareDraftFragment$Listener;

    return-object v0
.end method

.method private resetUi()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/glass/share/ShareDraftFragment;->listener:Lcom/google/glass/share/ShareDraftFragment$Listener;

    invoke-interface {v0}, Lcom/google/glass/share/ShareDraftFragment$Listener;->shouldShowMenus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/google/glass/share/ShareDraftFragment;->startCountdown()V

    .line 166
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/share/ShareDraftFragment;->showShareDraftTipsView(Z)V

    .line 167
    iget-object v0, p0, Lcom/google/glass/share/ShareDraftFragment;->listener:Lcom/google/glass/share/ShareDraftFragment$Listener;

    invoke-virtual {p0}, Lcom/google/glass/share/ShareDraftFragment;->getGuardConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/glass/share/ShareDraftFragment$Listener;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 175
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/share/ShareDraftFragment;->stopCountdown()V

    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/share/ShareDraftFragment;->showShareDraftTipsView(Z)V

    .line 172
    iget-object v0, p0, Lcom/google/glass/share/ShareDraftFragment;->listener:Lcom/google/glass/share/ShareDraftFragment$Listener;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-interface {v0, v1}, Lcom/google/glass/share/ShareDraftFragment$Listener;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 173
    iget-object v0, p0, Lcom/google/glass/share/ShareDraftFragment;->listener:Lcom/google/glass/share/ShareDraftFragment$Listener;

    invoke-interface {v0}, Lcom/google/glass/share/ShareDraftFragment$Listener;->onShareTargetConfirmed()V

    goto :goto_0
.end method

.method private showShareDraftTipsView(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 213
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 214
    .local v0, "visibility":I
    :goto_0
    iget-object v1, p0, Lcom/google/glass/share/ShareDraftFragment;->tipsView:Lcom/google/glass/widget/TipsView;

    invoke-virtual {v1, v0}, Lcom/google/glass/widget/TipsView;->setVisibility(I)V

    .line 215
    iget-object v1, p0, Lcom/google/glass/share/ShareDraftFragment;->gradientView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 216
    return-void

    .line 213
    .end local v0    # "visibility":I
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private startCountdown()V
    .locals 4

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/google/glass/share/ShareDraftFragment;->countdownRunning:Z

    if-eqz v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/google/glass/share/ShareDraftFragment;->progressBar:Lcom/google/glass/widget/ProgressBar;

    const-wide/16 v1, 0xfa0

    new-instance v3, Lcom/google/glass/share/ShareDraftFragment$4;

    invoke-direct {v3, p0}, Lcom/google/glass/share/ShareDraftFragment$4;-><init>(Lcom/google/glass/share/ShareDraftFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/widget/ProgressBar;->startProgress(JLandroid/animation/Animator$AnimatorListener;)V

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/share/ShareDraftFragment;->countdownRunning:Z

    goto :goto_0
.end method

.method private stopCountdown()V
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/google/glass/share/ShareDraftFragment;->countdownRunning:Z

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/share/ShareDraftFragment;->countdownRunning:Z

    .line 208
    iget-object v0, p0, Lcom/google/glass/share/ShareDraftFragment;->progressBar:Lcom/google/glass/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/google/glass/widget/ProgressBar;->stopProgress()V

    goto :goto_0
.end method


# virtual methods
.method getGuardConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/google/glass/share/ShareDraftFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/VoiceConfig;->getGuardConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    new-instance v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    invoke-virtual {p0}, Lcom/google/glass/share/ShareDraftFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 77
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/util/CachedBitmapFactory;

    new-instance v3, Lcom/google/glass/share/ShareDraftFragment$1;

    invoke-direct {v3, p0}, Lcom/google/glass/share/ShareDraftFragment$1;-><init>(Lcom/google/glass/share/ShareDraftFragment;)V

    new-instance v6, Lcom/google/glass/timeline/ui/NotificationState;

    invoke-direct {v6}, Lcom/google/glass/timeline/ui/NotificationState;-><init>()V

    new-instance v7, Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    invoke-direct {v7}, Lcom/google/glass/sync/TimelineSyncStatusReceiver;-><init>()V

    new-instance v8, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    invoke-direct {v8}, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;-><init>()V

    move v5, v4

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/ui/TimelineItemLoader;ZZLcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;)V

    iput-object v0, p0, Lcom/google/glass/share/ShareDraftFragment;->timelineItemAdapter:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    .line 92
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 97
    sget v1, Lcom/google/glass/sync/R$layout;->share_draft_view:I

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/google/glass/share/ShareDraftFragment$2;

    invoke-direct {v1, p0}, Lcom/google/glass/share/ShareDraftFragment$2;-><init>(Lcom/google/glass/share/ShareDraftFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    new-instance v1, Lcom/google/glass/share/ShareDraftFragment$3;

    invoke-direct {v1, p0}, Lcom/google/glass/share/ShareDraftFragment$3;-><init>(Lcom/google/glass/share/ShareDraftFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 116
    sget v1, Lcom/google/glass/sync/R$id;->tips_view_gradient:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/share/ShareDraftFragment;->gradientView:Landroid/view/View;

    .line 117
    sget v1, Lcom/google/glass/sync/R$id;->tips_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TipsView;

    iput-object v1, p0, Lcom/google/glass/share/ShareDraftFragment;->tipsView:Lcom/google/glass/widget/TipsView;

    .line 118
    sget v1, Lcom/google/glass/sync/R$id;->slider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/ProgressBar;

    iput-object v1, p0, Lcom/google/glass/share/ShareDraftFragment;->progressBar:Lcom/google/glass/widget/ProgressBar;

    move-object v1, v0

    .line 121
    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/glass/share/ShareDraftFragment;->timelineItemAdapter:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    invoke-virtual {v2, v3, v4, v4}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 123
    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/google/glass/share/ShareDraftFragment;->pauseShare()V

    .line 129
    invoke-super {p0}, Lcom/google/glass/app/GlassFragment;->onPause()V

    .line 130
    return-void
.end method

.method onPrepareMenu()V
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/google/glass/share/ShareDraftFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/share/ShareDraftFragment;->showShareDraftTipsView(Z)V

    .line 139
    invoke-direct {p0}, Lcom/google/glass/share/ShareDraftFragment;->stopCountdown()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0}, Lcom/google/glass/app/GlassFragment;->onResume()V

    .line 160
    invoke-virtual {p0}, Lcom/google/glass/share/ShareDraftFragment;->resumeShare()V

    .line 161
    return-void
.end method

.method public pauseShare()V
    .locals 2

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/google/glass/share/ShareDraftFragment;->stopCountdown()V

    .line 154
    iget-object v0, p0, Lcom/google/glass/share/ShareDraftFragment;->listener:Lcom/google/glass/share/ShareDraftFragment$Listener;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-interface {v0, v1}, Lcom/google/glass/share/ShareDraftFragment$Listener;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 155
    return-void
.end method

.method public resumeShare()V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/google/glass/share/ShareDraftFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/share/ShareDraftFragment;->resetUi()V

    goto :goto_0
.end method

.method setListener(Lcom/google/glass/share/ShareDraftFragment$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/glass/share/ShareDraftFragment$Listener;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/glass/share/ShareDraftFragment;->listener:Lcom/google/glass/share/ShareDraftFragment$Listener;

    .line 63
    return-void
.end method

.method setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 2
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/glass/share/ShareDraftFragment;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 68
    iget-object v0, p0, Lcom/google/glass/share/ShareDraftFragment;->readCallback:Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/google/glass/share/ShareDraftFragment;->readCallback:Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;

    new-instance v1, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;

    invoke-direct {v1, p1}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;->onItemRead(Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;)V

    .line 71
    :cond_0
    return-void
.end method
