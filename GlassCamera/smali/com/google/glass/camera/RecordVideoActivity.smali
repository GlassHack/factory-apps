.class public Lcom/google/glass/camera/RecordVideoActivity;
.super Lcom/google/glass/camera/BaseRecordVideoActivity;
.source "RecordVideoActivity.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final mainHandler:Landroid/os/Handler;


# instance fields
.field private dismissCanceled:Z

.field private final dismissRunnable:Ljava/lang/Runnable;

.field private gradient:Landroid/widget/ImageView;

.field private grammarLoader:Lcom/google/glass/voice/entity/EntityGrammarCompiler;

.field private guardPhraseHint:Landroid/widget/TextView;

.field private shouldListenForGuardPhrase:Z

.field private final timelineExecutor:Ljava/util/concurrent/ExecutorService;

.field private timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

.field private timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field private final timelineItemDeletedListener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

.field private timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

.field private timelineMenuBuilder:Lcom/google/glass/timeline/TimelineMenuBuilder;

.field timelineMenuSelectionHandler:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private video:Lcom/google/glass/camera/Video;

.field private videoItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private voiceOptionsHelper:Lcom/google/glass/timeline/VoiceOptionsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/RecordVideoActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/glass/camera/RecordVideoActivity;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;-><init>()V

    .line 74
    new-instance v0, Lcom/google/glass/async/PriorityThreadFactory;

    const/16 v1, 0x13

    sget-object v2, Lcom/google/glass/camera/RecordVideoActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 76
    invoke-interface {v2}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/timelineExecutor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    .line 74
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->timelineExecutor:Ljava/util/concurrent/ExecutorService;

    .line 78
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 108
    new-instance v0, Lcom/google/glass/camera/RecordVideoActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/RecordVideoActivity$1;-><init>(Lcom/google/glass/camera/RecordVideoActivity;)V

    iput-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->dismissRunnable:Ljava/lang/Runnable;

    .line 120
    new-instance v0, Lcom/google/glass/camera/RecordVideoActivity$2;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/RecordVideoActivity$2;-><init>(Lcom/google/glass/camera/RecordVideoActivity;)V

    iput-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->timelineItemDeletedListener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/camera/RecordVideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/RecordVideoActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->gradient:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/camera/RecordVideoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/RecordVideoActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->guardPhraseHint:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/google/glass/camera/RecordVideoActivity;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/camera/RecordVideoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/RecordVideoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/google/glass/camera/RecordVideoActivity;->shouldListenForGuardPhrase:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/glass/camera/RecordVideoActivity;)Lcom/google/glass/timeline/TimelineItemCreationHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/RecordVideoActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/camera/RecordVideoActivity;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/RecordVideoActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/camera/RecordVideoActivity;)Lcom/google/glass/timeline/TimelineItemLocationHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/RecordVideoActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/camera/RecordVideoActivity;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/RecordVideoActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->videoItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/glass/camera/RecordVideoActivity;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/RecordVideoActivity;
    .param p1, "x1"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/glass/camera/RecordVideoActivity;->videoItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/glass/camera/RecordVideoActivity;)Lcom/google/glass/voice/entity/EntityGrammarCompiler;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/RecordVideoActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->grammarLoader:Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/camera/RecordVideoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/RecordVideoActivity;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->dismissCanceled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/glass/camera/RecordVideoActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/RecordVideoActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->dismissRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private cancelDismissRunnable()V
    .locals 2

    .prologue
    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->dismissCanceled:Z

    .line 199
    sget-object v0, Lcom/google/glass/camera/RecordVideoActivity;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/camera/RecordVideoActivity;->dismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 200
    return-void
.end method

.method static createAndInsertVideoItem(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemCreationHelper;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/timeline/TimelineItemLocationHelper;Lcom/google/glass/sync/AttachmentManager;Lcom/google/glass/camera/Video;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timelineItemCreationHelper"    # Lcom/google/glass/timeline/TimelineItemCreationHelper;
    .param p2, "timelineItemDatabaseHelper"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .param p3, "timelineItemLocationHelper"    # Lcom/google/glass/timeline/TimelineItemLocationHelper;
    .param p4, "manager"    # Lcom/google/glass/sync/AttachmentManager;
    .param p5, "video"    # Lcom/google/glass/camera/Video;
    .param p6, "thumbnailFilePath"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 253
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 255
    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->createTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    .line 256
    .local v2, "videoItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-virtual {p3, v2}, Lcom/google/glass/timeline/TimelineItemLocationHelper;->populateLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 259
    const/16 v3, 0x11

    invoke-static {v2, v3}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 260
    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 261
    invoke-static {v2, v4}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 264
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    .line 265
    .local v0, "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    invoke-virtual {v0, p6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setThumbnailUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 266
    invoke-virtual {p5}, Lcom/google/glass/camera/Video;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 267
    const-string v3, "video/mp4"

    invoke-virtual {v0, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 268
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 269
    invoke-static {v2, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->addAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)V

    .line 272
    invoke-virtual {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setViewType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 275
    invoke-virtual {v2, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setAttributionType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 278
    invoke-virtual {v2, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 281
    invoke-virtual {p5}, Lcom/google/glass/camera/Video;->getEndTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCreationTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 282
    invoke-virtual {p5}, Lcom/google/glass/camera/Video;->getEndTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 285
    invoke-static {v2, v8}, Lcom/google/glass/timeline/TimelineItemUtils;->addSharingFeature(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 289
    invoke-virtual {p5}, Lcom/google/glass/camera/Video;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p4, v3}, Lcom/google/glass/camera/CameraUtils;->maybeStoreToAttachmentManager(Lcom/google/glass/sync/AttachmentManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "localAttachmentId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 292
    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 296
    :cond_0
    invoke-static {}, Lcom/google/glass/timeline/CameraBundleHelper;->getCurrentBundleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setBundleId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 299
    sget-object v3, Lcom/google/glass/camera/RecordVideoActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Inserting video timeline item with end time: %d"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p5}, Lcom/google/glass/camera/Video;->getEndTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    sget-object v3, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->VIDEO:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const/4 v4, 0x0

    invoke-virtual {p2, v2, v3, v4}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->insertTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)Landroid/net/Uri;

    .line 301
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.glass.camera.PHOTO_DELETED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3, v4}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->insertPostDeleteIntent(Ljava/lang/String;Landroid/content/Intent;)Landroid/net/Uri;

    .line 305
    invoke-static {p0, p2, v2}, Lcom/google/glass/timeline/CameraBundleHelper;->updateBundleIfNecessary(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 307
    return-object v2
.end method


# virtual methods
.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 143
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 144
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemCreationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    .line 145
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemLocationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

    .line 146
    new-instance v6, Lcom/google/glass/util/IconProvider;

    invoke-direct {v6, p0}, Lcom/google/glass/util/IconProvider;-><init>(Landroid/content/Context;)V

    .line 147
    .local v6, "iconProvider":Lcom/google/glass/util/IconProvider;
    new-instance v0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    iget-object v1, p0, Lcom/google/glass/camera/RecordVideoActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    new-instance v2, Lcom/google/glass/voice/VoiceAnnotationHelper;

    invoke-direct {v2, p0}, Lcom/google/glass/voice/VoiceAnnotationHelper;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, p0, v1, v6, v2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/util/IconProvider;Lcom/google/glass/voice/VoiceAnnotationHelper;)V

    iput-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->timelineMenuSelectionHandler:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    .line 149
    new-instance v0, Lcom/google/glass/timeline/TimelineMenuBuilder;

    invoke-direct {v0, p0, v6}, Lcom/google/glass/timeline/TimelineMenuBuilder;-><init>(Landroid/content/Context;Lcom/google/glass/util/IconProvider;)V

    iput-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->timelineMenuBuilder:Lcom/google/glass/timeline/TimelineMenuBuilder;

    .line 150
    new-instance v0, Lcom/google/glass/timeline/VoiceOptionsHelper;

    iget-object v2, p0, Lcom/google/glass/camera/RecordVideoActivity;->timelineMenuSelectionHandler:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    iget-object v3, p0, Lcom/google/glass/camera/RecordVideoActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 151
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/sound/SoundManager;

    .line 152
    invoke-static {}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->getInstance()Lcom/google/glass/util/TtsHelperLazySingletonProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/util/TtsHelper;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/timeline/VoiceOptionsHelper;-><init>(Lcom/google/glass/voice/GlassVoiceActivity;Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/sound/SoundManager;Lcom/google/glass/util/TtsHelper;)V

    iput-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->voiceOptionsHelper:Lcom/google/glass/timeline/VoiceOptionsHelper;

    .line 154
    sget v0, Lcom/google/glass/camera/R$id;->gradient:I

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/RecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->gradient:Landroid/widget/ImageView;

    .line 155
    sget v0, Lcom/google/glass/camera/R$id;->guard_phrase_hint:I

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/RecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->guardPhraseHint:Landroid/widget/TextView;

    .line 157
    new-instance v0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    invoke-virtual {p0}, Lcom/google/glass/camera/RecordVideoActivity;->getVoiceInputHelper()Lcom/google/glass/voice/VoiceInputHelper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/entity/EntityGrammarCompiler;-><init>(Landroid/content/Context;Lcom/google/glass/voice/GrammarStore;)V

    iput-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->grammarLoader:Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    .line 158
    invoke-virtual {p0}, Lcom/google/glass/camera/RecordVideoActivity;->getVoiceInputHelper()Lcom/google/glass/voice/VoiceInputHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/camera/RecordVideoActivity;->grammarLoader:Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceInputHelper;->addGrammarLoader(Lcom/google/glass/voice/GrammarLoader;)Lcom/google/glass/voice/VoiceInputHelper;

    .line 161
    invoke-virtual {p0}, Lcom/google/glass/camera/RecordVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 162
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/google/glass/camera/RecordVideoActivity;->isRecordingFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    const/4 v0, 0x1

    .line 367
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/google/glass/camera/RecordVideoActivity;->isRecordingFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    iget-object v1, p0, Lcom/google/glass/camera/RecordVideoActivity;->timelineMenuSelectionHandler:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    iget-object v2, p0, Lcom/google/glass/camera/RecordVideoActivity;->videoItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v3, p0, Lcom/google/glass/camera/RecordVideoActivity;->timelineItemDeletedListener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    const-string v4, "p"

    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->handleOptionsItemSelected(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/view/MenuItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;Ljava/lang/String;)Z

    move-result v0

    .line 396
    .local v0, "sharedOrDeleted":Z
    if-eqz v0, :cond_0

    .line 397
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/glass/camera/RecordVideoActivity;->shouldListenForGuardPhrase:Z

    .line 398
    iget-object v1, p0, Lcom/google/glass/camera/RecordVideoActivity;->gradient:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/glass/camera/RecordVideoActivity;->guardPhraseHint:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/camera/RecordVideoActivity;->stopListeningForGuardPhrase(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 404
    .end local v0    # "sharedOrDeleted":Z
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPauseInternal()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/google/glass/camera/RecordVideoActivity;->cancelDismissRunnable()V

    .line 178
    invoke-super {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->onPauseInternal()V

    .line 179
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 373
    invoke-super {p0, p1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 375
    .local v0, "showMenu":Z
    invoke-virtual {p0}, Lcom/google/glass/camera/RecordVideoActivity;->isRecordingFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/google/glass/camera/RecordVideoActivity;->gradient:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/glass/camera/RecordVideoActivity;->guardPhraseHint:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/camera/RecordVideoActivity;->stopListeningForGuardPhrase(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 381
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 382
    iget-object v1, p0, Lcom/google/glass/camera/RecordVideoActivity;->timelineMenuBuilder:Lcom/google/glass/timeline/TimelineMenuBuilder;

    iget-object v2, p0, Lcom/google/glass/camera/RecordVideoActivity;->videoItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v1, p1, v2}, Lcom/google/glass/timeline/TimelineMenuBuilder;->handlePrepareOptionsMenu(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    .line 386
    .end local v0    # "showMenu":Z
    :cond_0
    return v0
.end method

.method protected onResumeInternal()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->onResumeInternal()V

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->dismissCanceled:Z

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->shouldListenForGuardPhrase:Z

    .line 169
    invoke-virtual {p0}, Lcom/google/glass/camera/RecordVideoActivity;->isRecordingFinished()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/util/Labs$Feature;->ATC_OK:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->gradient:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/glass/camera/RecordVideoActivity;->guardPhraseHint:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/camera/RecordVideoActivity;->listenForGuardPhrase(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 172
    :cond_1
    return-void
.end method

.method protected onStopRecording(Lcom/google/glass/camera/Video;)V
    .locals 0
    .param p1, "video"    # Lcom/google/glass/camera/Video;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/glass/camera/RecordVideoActivity;->video:Lcom/google/glass/camera/Video;

    .line 205
    return-void
.end method

.method protected onThumbnailGenerated(Ljava/lang/String;)V
    .locals 5
    .param p1, "thumbnailFilePath"    # Ljava/lang/String;

    .prologue
    .line 210
    new-instance v0, Lcom/google/glass/camera/RecordVideoActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/camera/RecordVideoActivity$3;-><init>(Lcom/google/glass/camera/RecordVideoActivity;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/glass/camera/RecordVideoActivity;->timelineExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/glass/camera/Video;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/camera/RecordVideoActivity;->video:Lcom/google/glass/camera/Video;

    aput-object v4, v2, v3

    .line 239
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/camera/RecordVideoActivity$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 240
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/google/glass/camera/RecordVideoActivity;->cancelDismissRunnable()V

    .line 194
    invoke-super {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->onUserInteraction()V

    .line 195
    return-void
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 8
    .param p1, "command"    # Lcom/google/glass/voice/VoiceCommand;

    .prologue
    const/4 v4, 0x0

    .line 318
    invoke-virtual {p0}, Lcom/google/glass/camera/RecordVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->getGuardPhrase(Landroid/content/Context;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    invoke-virtual {p0}, Lcom/google/glass/camera/RecordVideoActivity;->markTips()V

    .line 320
    invoke-virtual {p0}, Lcom/google/glass/camera/RecordVideoActivity;->onUserInteraction()V

    .line 321
    iget-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "29"

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/google/glass/camera/RecordVideoActivity;->isRecordingFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->voiceOptionsHelper:Lcom/google/glass/timeline/VoiceOptionsHelper;

    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getCommandCreationUpTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/glass/camera/RecordVideoActivity;->videoItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    const-string v5, "p"

    iget-object v6, p0, Lcom/google/glass/camera/RecordVideoActivity;->timelineItemDeletedListener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/VoiceOptionsHelper;->triggerOkGlass(JLcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZLjava/lang/String;Lcom/google/glass/timeline/TimelineItemDeletedListener;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 346
    :goto_0
    return-object v0

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/camera/RecordVideoActivity;->pauseAutoStop()V

    .line 328
    invoke-virtual {p0}, Lcom/google/glass/camera/RecordVideoActivity;->newVoiceMenu()Lcom/google/glass/voice/menu/VoiceMenuBuilder;

    move-result-object v7

    .line 329
    .local v7, "builder":Lcom/google/glass/voice/menu/VoiceMenuBuilder;
    invoke-virtual {p0}, Lcom/google/glass/camera/RecordVideoActivity;->isVideoExtended()Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->EXTEND_VIDEO:Lcom/google/android/glass/app/ContextualMenus$Command;

    new-instance v1, Lcom/google/glass/camera/RecordVideoActivity$4;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/RecordVideoActivity$4;-><init>(Lcom/google/glass/camera/RecordVideoActivity;)V

    new-array v2, v4, [Lcom/google/glass/voice/menu/Requirement;

    invoke-interface {v7, v0, v1, v2}, Lcom/google/glass/voice/menu/VoiceMenuBuilder;->add(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;[Lcom/google/glass/voice/menu/Requirement;)V

    .line 337
    :cond_1
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->STOP_RECORDING:Lcom/google/android/glass/app/ContextualMenus$Command;

    new-instance v1, Lcom/google/glass/camera/RecordVideoActivity$5;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/RecordVideoActivity$5;-><init>(Lcom/google/glass/camera/RecordVideoActivity;)V

    new-array v2, v4, [Lcom/google/glass/voice/menu/Requirement;

    invoke-interface {v7, v0, v1, v2}, Lcom/google/glass/voice/menu/VoiceMenuBuilder;->add(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;[Lcom/google/glass/voice/menu/Requirement;)V

    .line 343
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getCommandCreationUpTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v7, v0, v1}, Lcom/google/glass/camera/RecordVideoActivity;->openVoiceMenu(Lcom/google/glass/voice/menu/VoiceMenuBuilder;J)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    goto :goto_0

    .line 346
    .end local v7    # "builder":Lcom/google/glass/voice/menu/VoiceMenuBuilder;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 351
    invoke-super {p0, p1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->onWindowFocusChanged(Z)V

    .line 352
    if-eqz p1, :cond_2

    .line 353
    invoke-virtual {p0}, Lcom/google/glass/camera/RecordVideoActivity;->resumeAutoStop()V

    .line 354
    invoke-virtual {p0}, Lcom/google/glass/camera/RecordVideoActivity;->isRecordingFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->shouldListenForGuardPhrase:Z

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->ATC_OK:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->gradient:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/glass/camera/RecordVideoActivity;->guardPhraseHint:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/camera/RecordVideoActivity;->listenForGuardPhrase(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 358
    :cond_2
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 183
    const-string v1, "com.google.android.glass.action.VOICE_TRIGGER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 184
    .local v0, "isTriggeredByVoice":Z
    const-string v2, "should_finish_turn_screen_off"

    .line 185
    invoke-virtual {p0}, Lcom/google/glass/camera/RecordVideoActivity;->shouldFinishTurnScreenOff()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 184
    :goto_0
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 186
    invoke-super {p0, p1, p2}, Lcom/google/glass/camera/BaseRecordVideoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 187
    return-void

    .line 185
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected startRecording()V
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->videoItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 313
    invoke-super {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->startRecording()V

    .line 314
    return-void
.end method
