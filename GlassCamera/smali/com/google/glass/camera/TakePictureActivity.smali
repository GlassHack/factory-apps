.class public Lcom/google/glass/camera/TakePictureActivity;
.super Lcom/google/glass/camera/BaseTakePictureActivity;
.source "TakePictureActivity.java"


# static fields
.field private static final FADE_VIGNETTE_DURATION_MS:J = 0xaL

.field private static final VIGNETTE_SLIDE_DURATION_MS:J = 0x12cL

.field private static final VIGNETTE_SLIDE_OFF_DELAY_MS:J = 0x1f4L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field backgroundExecutor:Ljava/util/concurrent/Executor;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private disableOnItemSelected:Z

.field private dismissCanceled:Z

.field private final dismissRunnable:Ljava/lang/Runnable;

.field private gradient:Landroid/widget/ImageView;

.field grammarLoader:Lcom/google/glass/voice/entity/EntityGrammarCompiler;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private guardPhraseHint:Landroid/widget/TextView;

.field isMakingVignette:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private isSharingOrDeleting:Z

.field private final mainHandler:Lcom/google/glass/android/os/HandlerWrapper;

.field private shouldAutoVignette:Z

.field private soundManager:Lcom/google/glass/sound/SoundManager;

.field timelineInfoList:Ljava/util/List;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/camera/TimelineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

.field private timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field private final timelineItemDeletedListener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

.field private timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

.field private timelineMenuBuilder:Lcom/google/glass/timeline/TimelineMenuBuilder;

.field timelineMenuSelectionHandler:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private final vignetteExecutor:Ljava/util/concurrent/ExecutorService;

.field vignetteHelper:Lcom/google/glass/vignette/VignetteHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private vignetteLoadingView:Lcom/google/android/glass/widget/Slider$Indeterminate;

.field private vignetteView:Landroid/widget/ImageView;

.field private voiceOptionHelper:Lcom/google/glass/timeline/VoiceOptionsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/TakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x13

    .line 86
    invoke-direct {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;-><init>()V

    .line 105
    new-instance v0, Lcom/google/glass/camera/TakePictureActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/TakePictureActivity$1;-><init>(Lcom/google/glass/camera/TakePictureActivity;)V

    iput-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineItemDeletedListener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    .line 150
    new-instance v0, Lcom/google/glass/camera/TakePictureActivity$2;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/TakePictureActivity$2;-><init>(Lcom/google/glass/camera/TakePictureActivity;)V

    iput-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->dismissRunnable:Ljava/lang/Runnable;

    .line 163
    invoke-static {}, Lcom/google/glass/android/os/HandlerWrapper;->createHandlerWrapper()Lcom/google/glass/android/os/HandlerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->mainHandler:Lcom/google/glass/android/os/HandlerWrapper;

    .line 169
    new-instance v0, Lcom/google/glass/async/PriorityThreadFactory;

    sget-object v1, Lcom/google/glass/camera/TakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 172
    invoke-interface {v1}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/timelineExecutor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    .line 170
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 175
    new-instance v0, Lcom/google/glass/async/PriorityThreadFactory;

    sget-object v1, Lcom/google/glass/camera/TakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 177
    invoke-interface {v1}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/vignetteExecutor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    .line 175
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->vignetteExecutor:Ljava/util/concurrent/ExecutorService;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineInfoList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/google/glass/camera/TakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/camera/TakePictureActivity;)Lcom/google/android/glass/widget/Slider$Indeterminate;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/TakePictureActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->vignetteLoadingView:Lcom/google/android/glass/widget/Slider$Indeterminate;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/glass/camera/TakePictureActivity;Lcom/google/android/glass/widget/Slider$Indeterminate;)Lcom/google/android/glass/widget/Slider$Indeterminate;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/TakePictureActivity;
    .param p1, "x1"    # Lcom/google/android/glass/widget/Slider$Indeterminate;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/glass/camera/TakePictureActivity;->vignetteLoadingView:Lcom/google/android/glass/widget/Slider$Indeterminate;

    return-object p1
.end method

.method static synthetic access$102(Lcom/google/glass/camera/TakePictureActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/TakePictureActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/google/glass/camera/TakePictureActivity;->isSharingOrDeleting:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/glass/camera/TakePictureActivity;Lcom/google/glass/camera/Picture;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/TakePictureActivity;
    .param p1, "x1"    # Lcom/google/glass/camera/Picture;
    .param p2, "x2"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p3, "x3"    # J

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/camera/TakePictureActivity;->updateFinalVignette(Lcom/google/glass/camera/Picture;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/glass/camera/TakePictureActivity;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/TakePictureActivity;
    .param p1, "x1"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "x2"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/google/glass/camera/TakePictureActivity;->replaceTimelineItemInList(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/glass/camera/TakePictureActivity;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/TakePictureActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/glass/camera/TakePictureActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/TakePictureActivity;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/glass/camera/TakePictureActivity;->shouldFinishTurnScreenOff()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/google/glass/camera/TakePictureActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/TakePictureActivity;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/google/glass/camera/TakePictureActivity;->dismissCanceled:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/google/glass/camera/TakePictureActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/TakePictureActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->dismissRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/glass/camera/TakePictureActivity;)Lcom/google/glass/android/os/HandlerWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/TakePictureActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->mainHandler:Lcom/google/glass/android/os/HandlerWrapper;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/glass/camera/TakePictureActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/TakePictureActivity;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/google/glass/camera/TakePictureActivity;->shouldAutoVignette:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/google/glass/camera/TakePictureActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/TakePictureActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/google/glass/camera/TakePictureActivity;->shouldAutoVignette:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/google/glass/camera/TakePictureActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/TakePictureActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/glass/camera/TakePictureActivity;->handleVignetteMenuSelection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/glass/camera/TakePictureActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/TakePictureActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/glass/camera/TakePictureActivity;->listenForGuardPhraseIfReady()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/glass/camera/TakePictureActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/TakePictureActivity;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/glass/camera/TakePictureActivity;->removeTimelineInfoAndThumbnailById(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/glass/camera/TakePictureActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/TakePictureActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/glass/camera/TakePictureActivity;->startVideoRecording()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/camera/TakePictureActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/TakePictureActivity;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/google/glass/camera/TakePictureActivity;->disableOnItemSelected:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/glass/camera/TakePictureActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/TakePictureActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/glass/camera/TakePictureActivity;->shouldlistenForGuardPhrase()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/glass/camera/TakePictureActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/TakePictureActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->gradient:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/camera/TakePictureActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/TakePictureActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->guardPhraseHint:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/camera/TakePictureActivity;I)Lcom/google/glass/camera/TimelineInfo;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/TakePictureActivity;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/glass/camera/TakePictureActivity;->getTimelineInfoById(I)Lcom/google/glass/camera/TimelineInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/camera/TakePictureActivity;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/TakePictureActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/camera/TakePictureActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/TakePictureActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/glass/camera/TakePictureActivity;->fadeInAndSlideOffVignette(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private addRecordVideoMenuOption(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 466
    sget v1, Lcom/google/glass/camera/R$id;->record_video_menu_option_id:I

    sget v2, Lcom/google/glass/camera/R$string;->touch_label_record_a_video:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 468
    .local v0, "menuItem":Landroid/view/MenuItem;
    sget v1, Lcom/google/glass/camera/R$drawable;->ic_video_50:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 469
    return-void
.end method

.method private addTakePictureMenuOption(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 459
    sget v1, Lcom/google/glass/camera/R$id;->take_picture_menu_option_id:I

    sget v2, Lcom/google/glass/camera/R$string;->touch_label_take_a_picture:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 461
    .local v0, "menuItem":Landroid/view/MenuItem;
    sget v1, Lcom/google/glass/camera/R$drawable;->ic_camera_50:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 462
    return-void
.end method

.method private addVignetteMenuOption(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 452
    sget v1, Lcom/google/glass/camera/R$id;->vignette_menu_option_id:I

    sget v2, Lcom/google/glass/camera/R$string;->vignette_option:I

    .line 453
    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 454
    .local v0, "menuItem":Landroid/view/MenuItem;
    sget v1, Lcom/google/glass/camera/R$drawable;->ic_vignette_50:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 455
    return-void
.end method

.method private cancelDismissRunnable()V
    .locals 2

    .prologue
    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/camera/TakePictureActivity;->dismissCanceled:Z

    .line 335
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->mainHandler:Lcom/google/glass/android/os/HandlerWrapper;

    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->dismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/glass/android/os/HandlerWrapper;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 336
    return-void
.end method

.method static createPictureItem(Lcom/google/glass/timeline/TimelineItemCreationHelper;Lcom/google/glass/timeline/TimelineItemLocationHelper;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 6
    .param p0, "timelineItemCreationHelper"    # Lcom/google/glass/timeline/TimelineItemCreationHelper;
    .param p1, "timelineItemLocationHelper"    # Lcom/google/glass/timeline/TimelineItemLocationHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 848
    sget-object v1, Lcom/google/glass/camera/TakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Creating the picture timeline item."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 849
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->createTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 850
    .local v0, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-virtual {p1, v0}, Lcom/google/glass/timeline/TimelineItemLocationHelper;->populateLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 853
    invoke-virtual {v0, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setViewType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 856
    invoke-virtual {v0, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setAttributionType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 859
    invoke-virtual {v0, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 862
    invoke-static {}, Lcom/google/glass/timeline/CameraBundleHelper;->getCurrentBundleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setBundleId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 865
    const/16 v1, 0x15

    invoke-static {v0, v1}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 866
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 867
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 870
    invoke-static {v0, v4}, Lcom/google/glass/timeline/TimelineItemUtils;->addSharingFeature(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 871
    return-object v0
.end method

.method private createVoiceMenuItemsForViewfinder()Lcom/google/glass/voice/menu/VoiceMenuBuilder;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1016
    invoke-virtual {p0}, Lcom/google/glass/camera/TakePictureActivity;->newVoiceMenu()Lcom/google/glass/voice/menu/VoiceMenuBuilder;

    move-result-object v0

    .line 1017
    .local v0, "voiceMenu":Lcom/google/glass/voice/menu/VoiceMenuBuilder;
    sget-object v1, Lcom/google/android/glass/app/ContextualMenus$Command;->TAKE_A_PICTURE:Lcom/google/android/glass/app/ContextualMenus$Command;

    new-instance v2, Lcom/google/glass/camera/TakePictureActivity$12;

    invoke-direct {v2, p0}, Lcom/google/glass/camera/TakePictureActivity$12;-><init>(Lcom/google/glass/camera/TakePictureActivity;)V

    new-array v3, v5, [Lcom/google/glass/voice/menu/Requirement;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/voice/menu/VoiceMenuBuilder;->add(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;[Lcom/google/glass/voice/menu/Requirement;)V

    .line 1026
    sget-object v1, Lcom/google/android/glass/app/ContextualMenus$Command;->RECORD_A_VIDEO:Lcom/google/android/glass/app/ContextualMenus$Command;

    new-instance v2, Lcom/google/glass/camera/TakePictureActivity$13;

    invoke-direct {v2, p0}, Lcom/google/glass/camera/TakePictureActivity$13;-><init>(Lcom/google/glass/camera/TakePictureActivity;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/glass/voice/menu/Requirement;

    .line 1033
    invoke-static {p0}, Lcom/google/glass/voice/menu/GlassMenuRequirements;->isMicAvailable(Landroid/content/Context;)Lcom/google/glass/voice/menu/Requirement;

    move-result-object v4

    aput-object v4, v3, v5

    .line 1026
    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/voice/menu/VoiceMenuBuilder;->add(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;[Lcom/google/glass/voice/menu/Requirement;)V

    .line 1034
    sget-object v1, Lcom/google/android/glass/app/ContextualMenus$Command;->HIDE_THE_VIEWFINDER:Lcom/google/android/glass/app/ContextualMenus$Command;

    new-instance v2, Lcom/google/glass/camera/TakePictureActivity$14;

    invoke-direct {v2, p0}, Lcom/google/glass/camera/TakePictureActivity$14;-><init>(Lcom/google/glass/camera/TakePictureActivity;)V

    new-array v3, v5, [Lcom/google/glass/voice/menu/Requirement;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/voice/menu/VoiceMenuBuilder;->add(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;[Lcom/google/glass/voice/menu/Requirement;)V

    .line 1041
    return-object v0
.end method

.method private fadeInAndSlideOffVignette(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "vignette"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 627
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity;->vignetteView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 628
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity;->vignetteView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 629
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity;->vignetteView:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 630
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity;->vignetteView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 631
    invoke-virtual {p0}, Lcom/google/glass/camera/TakePictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/glass/camera/R$integer;->take_picture_show_vignette_fade_duration_ms:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    .line 630
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 633
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity;->thumbnailScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v2}, Lcom/google/android/glass/widget/CardScrollView;->getSelectedItemPosition()I

    move-result v1

    .line 634
    .local v1, "position":I
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity;->vignetteView:Landroid/widget/ImageView;

    .line 635
    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 636
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {p0, v1}, Lcom/google/glass/camera/TakePictureActivity;->isOnFirstThumbnailCard(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 637
    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 642
    :goto_0
    return-void

    .line 640
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/glass/camera/TakePictureActivity;->getSlideOffTranslationX(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x12c

    .line 641
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private getSelectedTimelineInfo()Lcom/google/glass/camera/TimelineInfo;
    .locals 6

    .prologue
    .line 1126
    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->thumbnailScrollAdapter:Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;

    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity;->thumbnailScrollView:Lcom/google/android/glass/widget/CardScrollView;

    .line 1127
    invoke-virtual {v2}, Lcom/google/android/glass/widget/CardScrollView;->getSelectedItemPosition()I

    move-result v2

    .line 1126
    invoke-virtual {v1, v2}, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->computeThumbnailIndex(I)I

    move-result v0

    .line 1131
    .local v0, "position":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1132
    :cond_0
    sget-object v1, Lcom/google/glass/camera/TakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Computed position in array is out of bounds [position=%s, timelineList size=%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1133
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1132
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1134
    const/4 v1, 0x0

    .line 1136
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/camera/TimelineInfo;

    goto :goto_0
.end method

.method private getTimelineInfoById(I)Lcom/google/glass/camera/TimelineInfo;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1089
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1090
    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/camera/TimelineInfo;

    invoke-virtual {v1}, Lcom/google/glass/camera/TimelineInfo;->isPicture()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/camera/TimelineInfo;

    invoke-virtual {v1}, Lcom/google/glass/camera/TimelineInfo;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 1091
    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/camera/TimelineInfo;

    .line 1094
    :goto_1
    return-object v1

    .line 1089
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1094
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getTimelineItemForMenu()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 1049
    invoke-direct {p0}, Lcom/google/glass/camera/TakePictureActivity;->getSelectedTimelineInfo()Lcom/google/glass/camera/TimelineInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/camera/TimelineInfo;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method private handleOptionsItemSelectedOnPreviewCard(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "selectedOptionMenuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 423
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 424
    .local v0, "itemId":I
    sget v3, Lcom/google/glass/camera/R$id;->take_picture_menu_option_id:I

    if-ne v0, v3, :cond_0

    .line 425
    invoke-virtual {p0, v2}, Lcom/google/glass/camera/TakePictureActivity;->prepareForPictureOrVideoRequest(Z)V

    .line 426
    invoke-virtual {p0}, Lcom/google/glass/camera/TakePictureActivity;->takePicture()V

    :goto_0
    move v1, v2

    .line 433
    :goto_1
    return v1

    .line 427
    :cond_0
    sget v3, Lcom/google/glass/camera/R$id;->record_video_menu_option_id:I

    if-ne v0, v3, :cond_1

    .line 428
    invoke-direct {p0}, Lcom/google/glass/camera/TakePictureActivity;->startVideoRecording()V

    goto :goto_0

    .line 430
    :cond_1
    sget-object v2, Lcom/google/glass/camera/TakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unknown menu option for preview card."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private handleVignetteMenuSelection()Z
    .locals 3

    .prologue
    .line 495
    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->thumbnailScrollAdapter:Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;

    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity;->thumbnailScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v2}, Lcom/google/android/glass/widget/CardScrollView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->getItem(I)Lcom/google/glass/camera/Picture;

    move-result-object v0

    .line 496
    .local v0, "picture":Lcom/google/glass/camera/Picture;
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/TakePictureActivity;->makeVignette(Lcom/google/glass/camera/Picture;)Z

    move-result v1

    return v1
.end method

.method private listenForGuardPhraseIfReady()V
    .locals 2

    .prologue
    .line 1054
    invoke-direct {p0}, Lcom/google/glass/camera/TakePictureActivity;->shouldlistenForGuardPhrase()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->gradient:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->guardPhraseHint:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/camera/TakePictureActivity;->listenForGuardPhrase(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 1057
    :cond_0
    return-void
.end method

.method private prepareOptionsMenuForPreviewCard(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 389
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 390
    invoke-direct {p0, p1}, Lcom/google/glass/camera/TakePictureActivity;->addTakePictureMenuOption(Landroid/view/Menu;)V

    .line 391
    new-instance v0, Lcom/google/glass/phone/PhoneCallHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/phone/PhoneCallHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/phone/PhoneCallHelper;->isInCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    invoke-direct {p0, p1}, Lcom/google/glass/camera/TakePictureActivity;->addRecordVideoMenuOption(Landroid/view/Menu;)V

    .line 394
    :cond_0
    return-void
.end method

.method private removeTimelineInfoAndThumbnailById(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1114
    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/camera/TimelineInfo;

    invoke-virtual {v1}, Lcom/google/glass/camera/TimelineInfo;->isPicture()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/camera/TimelineInfo;

    invoke-virtual {v1}, Lcom/google/glass/camera/TimelineInfo;->getId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 1115
    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1116
    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->thumbnailsInSession:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1120
    :cond_0
    return-void

    .line 1113
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private replaceTimelineItemInList(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 2
    .param p1, "oldItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "newItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 1099
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1100
    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/camera/TimelineInfo;

    invoke-virtual {v1}, Lcom/google/glass/camera/TimelineInfo;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1101
    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/camera/TimelineInfo;

    invoke-virtual {v1, p2}, Lcom/google/glass/camera/TimelineInfo;->setItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 1105
    :cond_0
    return-void

    .line 1099
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private resetVignette(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 299
    if-eqz p1, :cond_1

    const-string v0, "screenshot_file_path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    const-string v0, "screenshot_file_path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 301
    .local v6, "screenshotPath":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->vignetteHelper:Lcom/google/glass/vignette/VignetteHelper;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->vignetteHelper:Lcom/google/glass/vignette/VignetteHelper;

    invoke-virtual {v0}, Lcom/google/glass/vignette/VignetteHelper;->recycle()V

    .line 304
    :cond_0
    new-instance v0, Lcom/google/glass/vignette/VignetteHelper;

    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v3, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

    iget-object v5, p0, Lcom/google/glass/camera/TakePictureActivity;->vignetteExecutor:Ljava/util/concurrent/ExecutorService;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/vignette/VignetteHelper;-><init>(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/timeline/TimelineItemCreationHelper;Lcom/google/glass/timeline/TimelineItemLocationHelper;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->vignetteHelper:Lcom/google/glass/vignette/VignetteHelper;

    .line 307
    .end local v6    # "screenshotPath":Ljava/lang/String;
    :cond_1
    const-string v0, "auto_vignette"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/camera/TakePictureActivity;->shouldAutoVignette:Z

    .line 308
    return-void
.end method

.method private shouldAddVignetteMenuOption()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 474
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity;->vignetteHelper:Lcom/google/glass/vignette/VignetteHelper;

    if-nez v2, :cond_1

    .line 490
    :cond_0
    :goto_0
    return v1

    .line 479
    :cond_1
    iget-boolean v2, p0, Lcom/google/glass/camera/TakePictureActivity;->shouldAutoVignette:Z

    if-nez v2, :cond_0

    .line 485
    invoke-direct {p0}, Lcom/google/glass/camera/TakePictureActivity;->getSelectedTimelineInfo()Lcom/google/glass/camera/TimelineInfo;

    move-result-object v0

    .line 486
    .local v0, "info":Lcom/google/glass/camera/TimelineInfo;
    invoke-virtual {v0}, Lcom/google/glass/camera/TimelineInfo;->isVignette()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/glass/camera/TimelineInfo;->hasVignette()Z

    move-result v2

    if-nez v2, :cond_0

    .line 490
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private shouldShowMenuOnThumbnailCard()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 365
    invoke-direct {p0}, Lcom/google/glass/camera/TakePictureActivity;->getSelectedTimelineInfo()Lcom/google/glass/camera/TimelineInfo;

    move-result-object v0

    .line 367
    .local v0, "info":Lcom/google/glass/camera/TimelineInfo;
    if-nez v0, :cond_0

    .line 368
    sget-object v2, Lcom/google/glass/camera/TakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Timeline item hasn\'t been created, don\'t open menu."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    :goto_0
    return v1

    .line 372
    :cond_0
    invoke-virtual {v0}, Lcom/google/glass/camera/TimelineInfo;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    iget-object v2, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v2}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    sget-object v2, Lcom/google/glass/camera/TakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "No attachment. Do not show menu."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 378
    :cond_1
    iget-boolean v2, p0, Lcom/google/glass/camera/TakePictureActivity;->isMakingVignette:Z

    if-eqz v2, :cond_2

    .line 379
    sget-object v2, Lcom/google/glass/camera/TakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Making vignette. Do not show menu."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 382
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private shouldlistenForGuardPhrase()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1062
    invoke-virtual {p0}, Lcom/google/glass/camera/TakePictureActivity;->isOnPreviewCard()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1071
    :cond_0
    :goto_0
    return v1

    .line 1066
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/camera/TakePictureActivity;->getSelectedTimelineInfo()Lcom/google/glass/camera/TimelineInfo;

    move-result-object v0

    .line 1067
    .local v0, "info":Lcom/google/glass/camera/TimelineInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/glass/camera/TimelineInfo;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v3

    iget-object v3, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v3}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    .line 1068
    goto :goto_0

    .line 1071
    :cond_3
    iget-boolean v3, p0, Lcom/google/glass/camera/TakePictureActivity;->isMakingVignette:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/google/glass/camera/TakePictureActivity;->isSharingOrDeleting:Z

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method private startVideoRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 445
    invoke-virtual {p0, v2}, Lcom/google/glass/camera/TakePictureActivity;->prepareForPictureOrVideoRequest(Z)V

    .line 446
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->cameraHelper:Lcom/google/glass/camera/CameraHelper;

    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-virtual {v0, v2, v1, v2}, Lcom/google/glass/camera/CameraHelper;->recordVideo(ZLcom/google/glass/sound/SoundManager;Z)V

    .line 447
    return-void
.end method

.method private updateFinalVignette(Lcom/google/glass/camera/Picture;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;J)V
    .locals 7
    .param p1, "picture"    # Lcom/google/glass/camera/Picture;
    .param p2, "previewItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p3, "captureTimeMillis"    # J

    .prologue
    .line 596
    invoke-virtual {p1}, Lcom/google/glass/camera/Picture;->isFinalPictureSaved()Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 597
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->vignetteHelper:Lcom/google/glass/vignette/VignetteHelper;

    const/4 v2, 0x0

    new-instance v6, Lcom/google/glass/camera/TakePictureActivity$6;

    invoke-direct {v6, p0, p1}, Lcom/google/glass/camera/TakePictureActivity$6;-><init>(Lcom/google/glass/camera/TakePictureActivity;Lcom/google/glass/camera/Picture;)V

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/vignette/VignetteHelper;->buildCompositeAsync(Lcom/google/glass/camera/Picture;ZLcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;JLcom/google/glass/composite/CompositeBuilder$CompositeReadyCallback;)V

    .line 623
    return-void
.end method

.method static updatePictureItemWhenSaved(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/camera/Picture;Lcom/google/glass/sync/AttachmentManager;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timelineItemDatabaseHelper"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .param p2, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p3, "picture"    # Lcom/google/glass/camera/Picture;
    .param p4, "manager"    # Lcom/google/glass/sync/AttachmentManager;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 949
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 951
    new-instance v0, Lcom/google/glass/camera/TakePictureActivity$11;

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/camera/TakePictureActivity$11;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/camera/Picture;Lcom/google/glass/sync/AttachmentManager;Landroid/content/Context;)V

    .line 1001
    .local v0, "update":Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;
    invoke-virtual {p1, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;)V

    .line 1002
    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v6

    .line 1006
    .local v6, "updatedItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsDeleted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1007
    :cond_0
    sget-object v1, Lcom/google/glass/camera/TakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Did not update item with full picture, because it no longer exists."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1008
    const/4 v6, 0x0

    .line 1011
    .end local v6    # "updatedItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_1
    return-object v6
.end method

.method static updatePictureItemWhenTaken(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/util/CachedFilesManager;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/camera/Picture;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timelineItemDatabaseHelper"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .param p2, "cachedFilesManager"    # Lcom/google/glass/util/CachedFilesManager;
    .param p3, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p4, "picture"    # Lcom/google/glass/camera/Picture;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 889
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 890
    sget-object v1, Lcom/google/glass/camera/TakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Attaching the thumbnail to the picture timeline item."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 892
    new-instance v0, Lcom/google/glass/camera/TakePictureActivity$10;

    move-object v1, p4

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/camera/TakePictureActivity$10;-><init>(Lcom/google/glass/camera/Picture;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Landroid/content/Context;)V

    .line 922
    .local v0, "update":Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;
    invoke-virtual {p1, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;)V

    .line 923
    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v6

    .line 927
    .local v6, "updatedItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsDeleted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 928
    :cond_0
    sget-object v1, Lcom/google/glass/camera/TakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Did not update item with thumbnail, because it no longer exists."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 929
    const/4 v6, 0x0

    .line 932
    .end local v6    # "updatedItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_1
    return-object v6
.end method


# virtual methods
.method makeVignette(Lcom/google/glass/camera/Picture;)Z
    .locals 7
    .param p1, "picture"    # Lcom/google/glass/camera/Picture;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 506
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 509
    invoke-virtual {p0}, Lcom/google/glass/camera/TakePictureActivity;->deactivateThumbnailScrollView()V

    .line 512
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/TakePictureActivity;->toggleNudgeAndScreenTimeout(Z)V

    .line 514
    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->vignetteHelper:Lcom/google/glass/vignette/VignetteHelper;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v2, v0

    .line 583
    :goto_0
    return v2

    .line 519
    :cond_1
    iput-boolean v2, p0, Lcom/google/glass/camera/TakePictureActivity;->isMakingVignette:Z

    .line 520
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->loggingStats:Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;

    iget v1, v0, Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;->totalVignettes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;->totalVignettes:I

    .line 521
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->vignetteHelper:Lcom/google/glass/vignette/VignetteHelper;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/glass/camera/Picture;->getCaptureTime()J

    move-result-wide v4

    new-instance v6, Lcom/google/glass/camera/TakePictureActivity$5;

    invoke-direct {v6, p0, p1}, Lcom/google/glass/camera/TakePictureActivity$5;-><init>(Lcom/google/glass/camera/TakePictureActivity;Lcom/google/glass/camera/Picture;)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/vignette/VignetteHelper;->buildCompositeAsync(Lcom/google/glass/camera/Picture;ZLcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;JLcom/google/glass/composite/CompositeBuilder$CompositeReadyCallback;)V

    .line 581
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->vignetteView:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/google/android/glass/widget/Slider;->from(Landroid/view/View;)Lcom/google/android/glass/widget/Slider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/glass/widget/Slider;->startIndeterminate()Lcom/google/android/glass/widget/Slider$Indeterminate;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->vignetteLoadingView:Lcom/google/android/glass/widget/Slider$Indeterminate;

    goto :goto_0
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 239
    invoke-super {p0, p1}, Lcom/google/glass/camera/BaseTakePictureActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 241
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 242
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 243
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemCreationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    .line 244
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemLocationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

    .line 245
    new-instance v6, Lcom/google/glass/util/IconProvider;

    invoke-direct {v6, p0}, Lcom/google/glass/util/IconProvider;-><init>(Landroid/content/Context;)V

    .line 246
    .local v6, "iconProvider":Lcom/google/glass/util/IconProvider;
    new-instance v0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    new-instance v2, Lcom/google/glass/voice/VoiceAnnotationHelper;

    invoke-direct {v2, p0}, Lcom/google/glass/voice/VoiceAnnotationHelper;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, p0, v1, v6, v2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/util/IconProvider;Lcom/google/glass/voice/VoiceAnnotationHelper;)V

    iput-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineMenuSelectionHandler:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    .line 248
    new-instance v0, Lcom/google/glass/timeline/TimelineMenuBuilder;

    invoke-direct {v0, p0, v6}, Lcom/google/glass/timeline/TimelineMenuBuilder;-><init>(Landroid/content/Context;Lcom/google/glass/util/IconProvider;)V

    iput-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineMenuBuilder:Lcom/google/glass/timeline/TimelineMenuBuilder;

    .line 249
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    iput-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 250
    new-instance v0, Lcom/google/glass/timeline/VoiceOptionsHelper;

    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineMenuSelectionHandler:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    iget-object v3, p0, Lcom/google/glass/camera/TakePictureActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 254
    invoke-static {}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->getInstance()Lcom/google/glass/util/TtsHelperLazySingletonProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/util/TtsHelper;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/timeline/VoiceOptionsHelper;-><init>(Lcom/google/glass/voice/GlassVoiceActivity;Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/sound/SoundManager;Lcom/google/glass/util/TtsHelper;)V

    iput-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->voiceOptionHelper:Lcom/google/glass/timeline/VoiceOptionsHelper;

    .line 256
    sget v0, Lcom/google/glass/camera/R$id;->gradient:I

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/TakePictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->gradient:Landroid/widget/ImageView;

    .line 257
    sget v0, Lcom/google/glass/camera/R$id;->guard_phrase_hint:I

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/TakePictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->guardPhraseHint:Landroid/widget/TextView;

    .line 260
    invoke-virtual {p0}, Lcom/google/glass/camera/TakePictureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 261
    .local v7, "intent":Landroid/content/Intent;
    invoke-direct {p0, v7}, Lcom/google/glass/camera/TakePictureActivity;->resetVignette(Landroid/content/Intent;)V

    .line 264
    sget v0, Lcom/google/glass/camera/R$id;->vignette:I

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/TakePictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->vignetteView:Landroid/widget/ImageView;

    .line 265
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->vignetteView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    new-instance v0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    invoke-virtual {p0}, Lcom/google/glass/camera/TakePictureActivity;->getVoiceInputHelper()Lcom/google/glass/voice/VoiceInputHelper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/entity/EntityGrammarCompiler;-><init>(Landroid/content/Context;Lcom/google/glass/voice/GrammarStore;)V

    iput-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->grammarLoader:Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    .line 268
    invoke-virtual {p0}, Lcom/google/glass/camera/TakePictureActivity;->getVoiceInputHelper()Lcom/google/glass/voice/VoiceInputHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->grammarLoader:Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceInputHelper;->addGrammarLoader(Lcom/google/glass/voice/GrammarLoader;)Lcom/google/glass/voice/VoiceInputHelper;

    .line 272
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->thumbnailScrollView:Lcom/google/android/glass/widget/CardScrollView;

    new-instance v1, Lcom/google/glass/camera/TakePictureActivity$3;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/TakePictureActivity$3;-><init>(Lcom/google/glass/camera/TakePictureActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 289
    new-instance v0, Lcom/google/glass/camera/TakePictureActivity$4;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/TakePictureActivity$4;-><init>(Lcom/google/glass/camera/TakePictureActivity;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/TakePictureActivity;->setThumbnailSlideOffListener(Lcom/google/glass/util/SimpleAnimationListener;)V

    .line 296
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 312
    invoke-super {p0, p1}, Lcom/google/glass/camera/BaseTakePictureActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 313
    invoke-direct {p0, p1}, Lcom/google/glass/camera/TakePictureActivity;->resetVignette(Landroid/content/Intent;)V

    .line 314
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "selectedOptionMenuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 398
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sget v3, Lcom/google/glass/camera/R$id;->vignette_menu_option_id:I

    if-ne v2, v3, :cond_1

    .line 399
    invoke-direct {p0}, Lcom/google/glass/camera/TakePictureActivity;->handleVignetteMenuSelection()Z

    move v0, v1

    .line 415
    :cond_0
    :goto_0
    return v0

    .line 402
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/camera/TakePictureActivity;->isOnPreviewCard()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 403
    invoke-direct {p0, p1}, Lcom/google/glass/camera/TakePictureActivity;->handleOptionsItemSelectedOnPreviewCard(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 406
    :cond_2
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineMenuSelectionHandler:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    .line 407
    invoke-direct {p0}, Lcom/google/glass/camera/TakePictureActivity;->getTimelineItemForMenu()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineItemDeletedListener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    const-string v5, "p"

    .line 406
    invoke-virtual {v2, v3, p1, v4, v5}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->handleOptionsItemSelected(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/view/MenuItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;Ljava/lang/String;)Z

    move-result v0

    .line 410
    .local v0, "sharedOrDeleted":Z
    if-eqz v0, :cond_0

    .line 411
    iput-boolean v1, p0, Lcom/google/glass/camera/TakePictureActivity;->isSharingOrDeleting:Z

    .line 412
    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->gradient:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity;->guardPhraseHint:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/camera/TakePictureActivity;->stopListeningForGuardPhrase(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method protected onPauseInternal()V
    .locals 0

    .prologue
    .line 328
    invoke-super {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->onPauseInternal()V

    .line 330
    invoke-direct {p0}, Lcom/google/glass/camera/TakePictureActivity;->cancelDismissRunnable()V

    .line 331
    return-void
.end method

.method protected onPictureCaptureComplete()V
    .locals 1

    .prologue
    .line 718
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/camera/TakePictureActivity;->disableOnItemSelected:Z

    .line 719
    return-void
.end method

.method protected onPictureSaved(Lcom/google/glass/camera/Picture;)V
    .locals 5
    .param p1, "picture"    # Lcom/google/glass/camera/Picture;

    .prologue
    .line 729
    invoke-virtual {p1}, Lcom/google/glass/camera/Picture;->getIdInSession()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/glass/camera/TakePictureActivity;->getTimelineInfoById(I)Lcom/google/glass/camera/TimelineInfo;

    move-result-object v0

    .line 732
    .local v0, "pictureInfo":Lcom/google/glass/camera/TimelineInfo;
    if-nez v0, :cond_0

    .line 793
    :goto_0
    return-void

    .line 736
    :cond_0
    invoke-virtual {v0}, Lcom/google/glass/camera/TimelineInfo;->getVignette()Lcom/google/glass/camera/TimelineInfo;

    move-result-object v1

    .line 737
    .local v1, "vignetteInfo":Lcom/google/glass/camera/TimelineInfo;
    if-eqz v1, :cond_1

    .line 738
    invoke-virtual {v1}, Lcom/google/glass/camera/TimelineInfo;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/glass/camera/Picture;->getCaptureTime()J

    move-result-wide v3

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/google/glass/camera/TakePictureActivity;->updateFinalVignette(Lcom/google/glass/camera/Picture;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;J)V

    .line 741
    :cond_1
    new-instance v2, Lcom/google/glass/camera/TakePictureActivity$8;

    invoke-direct {v2, p0, p1}, Lcom/google/glass/camera/TakePictureActivity$8;-><init>(Lcom/google/glass/camera/TakePictureActivity;Lcom/google/glass/camera/Picture;)V

    iget-object v3, p0, Lcom/google/glass/camera/TakePictureActivity;->backgroundExecutor:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    .line 792
    invoke-virtual {v2, v3, v4}, Lcom/google/glass/camera/TakePictureActivity$8;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onPictureTaken(Lcom/google/glass/camera/Picture;)V
    .locals 6
    .param p1, "picture"    # Lcom/google/glass/camera/Picture;

    .prologue
    .line 659
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 661
    .local v0, "pictureTakenTimestamp":J
    new-instance v2, Lcom/google/glass/camera/TimelineInfo;

    iget-object v3, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

    .line 662
    invoke-static {v3, v4}, Lcom/google/glass/camera/TakePictureActivity;->createPictureItem(Lcom/google/glass/timeline/TimelineItemCreationHelper;Lcom/google/glass/timeline/TimelineItemLocationHelper;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v3

    .line 663
    invoke-virtual {p1}, Lcom/google/glass/camera/Picture;->getIdInSession()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/glass/camera/TimelineInfo;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 664
    .local v2, "timelineInfo":Lcom/google/glass/camera/TimelineInfo;
    iget-object v3, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineInfoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/glass/camera/TakePictureActivity;->disableOnItemSelected:Z

    .line 669
    new-instance v3, Lcom/google/glass/camera/TakePictureActivity$7;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/google/glass/camera/TakePictureActivity$7;-><init>(Lcom/google/glass/camera/TakePictureActivity;Lcom/google/glass/camera/Picture;J)V

    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity;->backgroundExecutor:Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    .line 712
    invoke-virtual {v3, v4, v5}, Lcom/google/glass/camera/TakePictureActivity$7;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 713
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x1

    .line 340
    invoke-super {p0, p1}, Lcom/google/glass/camera/BaseTakePictureActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 342
    invoke-virtual {p0}, Lcom/google/glass/camera/TakePictureActivity;->isOnPreviewCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    invoke-direct {p0, p1}, Lcom/google/glass/camera/TakePictureActivity;->prepareOptionsMenuForPreviewCard(Landroid/view/Menu;)V

    .line 361
    :goto_0
    return v0

    .line 346
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/camera/TakePictureActivity;->shouldShowMenuOnThumbnailCard()Z

    move-result v1

    if-nez v1, :cond_1

    .line 347
    const/4 v0, 0x0

    goto :goto_0

    .line 351
    :cond_1
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 352
    invoke-direct {p0}, Lcom/google/glass/camera/TakePictureActivity;->shouldAddVignetteMenuOption()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 353
    invoke-direct {p0, p1}, Lcom/google/glass/camera/TakePictureActivity;->addVignetteMenuOption(Landroid/view/Menu;)V

    .line 355
    :cond_2
    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineMenuBuilder:Lcom/google/glass/timeline/TimelineMenuBuilder;

    invoke-direct {p0}, Lcom/google/glass/camera/TakePictureActivity;->getTimelineItemForMenu()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/google/glass/timeline/TimelineMenuBuilder;->handlePrepareOptionsMenu(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    .line 359
    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->gradient:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity;->guardPhraseHint:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/camera/TakePictureActivity;->stopListeningForGuardPhrase(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method protected onResumeInternal()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 318
    invoke-super {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->onResumeInternal()V

    .line 319
    iput-boolean v0, p0, Lcom/google/glass/camera/TakePictureActivity;->dismissCanceled:Z

    .line 322
    iput-boolean v0, p0, Lcom/google/glass/camera/TakePictureActivity;->isSharingOrDeleting:Z

    .line 323
    invoke-direct {p0}, Lcom/google/glass/camera/TakePictureActivity;->listenForGuardPhraseIfReady()V

    .line 324
    return-void
.end method

.method protected onTakePicture()V
    .locals 2

    .prologue
    .line 723
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->gradient:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->guardPhraseHint:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/camera/TakePictureActivity;->stopListeningForGuardPhrase(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 724
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 653
    invoke-direct {p0}, Lcom/google/glass/camera/TakePictureActivity;->cancelDismissRunnable()V

    .line 654
    invoke-super {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->onUserInteraction()V

    .line 655
    return-void
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 9
    .param p1, "command"    # Lcom/google/glass/voice/VoiceCommand;

    .prologue
    const/4 v3, 0x0

    .line 797
    invoke-virtual {p0}, Lcom/google/glass/camera/TakePictureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->getGuardPhrase(Landroid/content/Context;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 798
    invoke-virtual {p0}, Lcom/google/glass/camera/TakePictureActivity;->markTips()V

    .line 801
    invoke-virtual {p0}, Lcom/google/glass/camera/TakePictureActivity;->onUserInteraction()V

    .line 802
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "13"

    invoke-virtual {v0, v2, v4}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 805
    invoke-virtual {p0}, Lcom/google/glass/camera/TakePictureActivity;->isOnPreviewCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 807
    invoke-direct {p0}, Lcom/google/glass/camera/TakePictureActivity;->createVoiceMenuItemsForViewfinder()Lcom/google/glass/voice/menu/VoiceMenuBuilder;

    move-result-object v0

    .line 808
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getCommandCreationUpTimeMillis()J

    move-result-wide v2

    .line 807
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/glass/camera/TakePictureActivity;->openVoiceMenu(Lcom/google/glass/voice/menu/VoiceMenuBuilder;J)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 836
    :goto_0
    return-object v0

    .line 810
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/camera/TakePictureActivity;->shouldShowMenuOnThumbnailCard()Z

    move-result v0

    if-nez v0, :cond_1

    .line 811
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 812
    invoke-virtual {p0}, Lcom/google/glass/camera/TakePictureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/VoiceConfig;->getGuardConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    goto :goto_0

    .line 815
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/camera/TakePictureActivity;->newVoiceMenu()Lcom/google/glass/voice/menu/VoiceMenuBuilder;

    move-result-object v1

    .line 816
    .local v1, "items":Lcom/google/glass/voice/menu/VoiceMenuBuilder;
    invoke-direct {p0}, Lcom/google/glass/camera/TakePictureActivity;->shouldAddVignetteMenuOption()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 817
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->MAKE_A_VIGNETTE:Lcom/google/android/glass/app/ContextualMenus$Command;

    new-instance v2, Lcom/google/glass/camera/TakePictureActivity$9;

    invoke-direct {v2, p0}, Lcom/google/glass/camera/TakePictureActivity$9;-><init>(Lcom/google/glass/camera/TakePictureActivity;)V

    new-array v4, v3, [Lcom/google/glass/voice/menu/Requirement;

    invoke-interface {v1, v0, v2, v4}, Lcom/google/glass/voice/menu/VoiceMenuBuilder;->add(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;[Lcom/google/glass/voice/menu/Requirement;)V

    .line 825
    :cond_2
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->voiceOptionHelper:Lcom/google/glass/timeline/VoiceOptionsHelper;

    .line 826
    invoke-direct {p0}, Lcom/google/glass/camera/TakePictureActivity;->getSelectedTimelineInfo()Lcom/google/glass/camera/TimelineInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/camera/TimelineInfo;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    const-string v4, "p"

    new-instance v5, Lcom/google/glass/timeline/DeleteAndAnimateTimelineItemListener;

    iget-object v6, p0, Lcom/google/glass/camera/TakePictureActivity;->thumbnailScrollView:Lcom/google/android/glass/widget/CardScrollView;

    iget-object v7, p0, Lcom/google/glass/camera/TakePictureActivity;->thumbnailScrollView:Lcom/google/android/glass/widget/CardScrollView;

    .line 828
    invoke-virtual {v7}, Lcom/google/android/glass/widget/CardScrollView;->getSelectedItemPosition()I

    move-result v7

    iget-object v8, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineItemDeletedListener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    invoke-direct {v5, v6, v7, v8}, Lcom/google/glass/timeline/DeleteAndAnimateTimelineItemListener;-><init>(Lcom/google/android/glass/widget/CardScrollView;ILcom/google/glass/timeline/TimelineItemDeletedListener;)V

    .line 825
    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/timeline/VoiceOptionsHelper;->populateVoiceMenuItems(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZLjava/lang/String;Lcom/google/glass/timeline/TimelineItemDeletedListener;)Lcom/google/glass/voice/menu/VoiceMenuBuilder;

    .line 830
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getCommandCreationUpTimeMillis()J

    move-result-wide v2

    .line 831
    invoke-virtual {p0}, Lcom/google/glass/camera/TakePictureActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    .line 830
    invoke-static {v2, v3, v0, p0, v1}, Lcom/google/glass/voice/menu/VoiceMenuUtils;->openVoiceMenu(JLcom/google/glass/sound/SoundManager;Lcom/google/glass/voice/GlassVoiceActivity;Lcom/google/glass/voice/menu/VoiceMenuBuilder;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    goto :goto_0

    .line 835
    .end local v1    # "items":Lcom/google/glass/voice/menu/VoiceMenuBuilder;
    :cond_3
    sget-object v0, Lcom/google/glass/camera/TakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unknown voice command: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-interface {v0, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 836
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1076
    invoke-super {p0, p1}, Lcom/google/glass/camera/BaseTakePictureActivity;->onWindowFocusChanged(Z)V

    .line 1077
    if-eqz p1, :cond_0

    .line 1078
    invoke-direct {p0}, Lcom/google/glass/camera/TakePictureActivity;->listenForGuardPhraseIfReady()V

    .line 1080
    :cond_0
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 646
    const-string v0, "should_finish_turn_screen_off"

    invoke-virtual {p0}, Lcom/google/glass/camera/TakePictureActivity;->shouldFinishTurnScreenOff()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 647
    invoke-super {p0, p1, p2}, Lcom/google/glass/camera/BaseTakePictureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 648
    return-void
.end method
