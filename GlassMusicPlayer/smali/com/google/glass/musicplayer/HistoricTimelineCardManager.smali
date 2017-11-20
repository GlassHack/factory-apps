.class public Lcom/google/glass/musicplayer/HistoricTimelineCardManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_LOCAL_ID:I = 0x0

.field private static final MSG_INSERT_TIMELINE_CARD:I = 0x1

.field private static final UPDATE_LOCK:Ljava/lang/Object;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private albumName:Ljava/lang/String;

.field private artistName:Ljava/lang/String;

.field private artwork:Landroid/graphics/Bitmap;

.field private bundleCoverAttachments:Ljava/util/ArrayList;

.field private bundleId:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private createTimelineBundleCover:Z

.field private currentTimelineBundleCover:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private duration:J

.field private final handler:Landroid/os/Handler;

.field private insertTimelineCardDelayMs:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private isMetadataSet:Z

.field private lastInsertedLocalId:J

.field private localId:J

.field private final timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

.field private final timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field private final timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

.field private trackName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->UPDATE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->insertTimelineCardDelayMs:J

    .line 87
    iput-object p1, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->context:Landroid/content/Context;

    .line 90
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 92
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemCreationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    .line 94
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemLocationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

    .line 96
    new-instance v0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$1;

    invoke-direct {v0, p0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$1;-><init>(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)V

    iput-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->handler:Landroid/os/Handler;

    .line 107
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->generateNewBundle()V

    .line 108
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->lastInsertedLocalId:J

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->insertTimelineCardIfPossible()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Lcom/google/glass/timeline/TimelineItemCreationHelper;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Lcom/google/glass/timeline/TimelineItemLocationHelper;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->bundleCoverAttachments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->bundleId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->createTimelineBundleCover:Z

    return v0
.end method

.method static synthetic access$802(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->createTimelineBundleCover:Z

    return p1
.end method

.method static synthetic access$900(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->currentTimelineBundleCover:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->currentTimelineBundleCover:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object p1
.end method

.method private insertTimelineCard(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/Bitmap;)V
    .locals 11

    .prologue
    .line 193
    sget-object v0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Inserting timeline card for localId=%d, trackName=%s, albumName=%s, artistName=%s, duration=%d"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 194
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    const/4 v3, 0x4

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 193
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 197
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v10

    new-instance v0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object/from16 v5, p5

    move-object v6, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;-><init>(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/Bitmap;)V

    invoke-interface {v10, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 327
    return-void
.end method

.method private insertTimelineCardIfPossible()V
    .locals 10

    .prologue
    .line 170
    sget-object v9, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->UPDATE_LOCK:Ljava/lang/Object;

    monitor-enter v9

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->bundleId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->localId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->isMetadataSet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->artwork:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 173
    iget-wide v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->localId:J

    iget-wide v2, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->lastInsertedLocalId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 175
    invoke-direct {p0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->resetSongData()V

    .line 183
    :cond_0
    :goto_0
    monitor-exit v9

    .line 184
    return-void

    .line 177
    :cond_1
    iget-wide v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->localId:J

    iput-wide v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->lastInsertedLocalId:J

    .line 178
    iget-wide v1, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->localId:J

    iget-object v3, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->trackName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->albumName:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->artistName:Ljava/lang/String;

    iget-wide v6, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->duration:J

    iget-object v8, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->artwork:Landroid/graphics/Bitmap;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->insertTimelineCard(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/Bitmap;)V

    .line 179
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/musicplayer/MusicApplication;->from(Landroid/content/Context;)Lcom/google/glass/musicplayer/MusicApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/MusicApplication;->incrementNumSongsPlayedBeforePause()V

    .line 180
    invoke-direct {p0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->resetSongData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method private resetSongData()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 123
    iput-wide v2, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->localId:J

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->isMetadataSet:Z

    .line 125
    iput-object v1, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->trackName:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->albumName:Ljava/lang/String;

    .line 127
    iput-object v1, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->artistName:Ljava/lang/String;

    .line 128
    iput-wide v2, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->duration:J

    .line 129
    iput-object v1, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->artwork:Landroid/graphics/Bitmap;

    .line 131
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    return-void
.end method


# virtual methods
.method public generateNewBundle()V
    .locals 2

    .prologue
    .line 112
    sget-object v1, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->UPDATE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->resetSongData()V

    .line 115
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->bundleId:Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->createTimelineBundleCover:Z

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->currentTimelineBundleCover:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->bundleCoverAttachments:Ljava/util/ArrayList;

    .line 119
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setArtwork(Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    .line 150
    sget-object v1, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->UPDATE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_0
    iput-object p1, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->artwork:Landroid/graphics/Bitmap;

    .line 153
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->insertTimelineCardDelayMs:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 154
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setInsertTimelineCardDelayMs(J)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 331
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 332
    iput-wide p1, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->insertTimelineCardDelayMs:J

    .line 333
    return-void
.end method

.method public setLocalId(J)V
    .locals 7

    .prologue
    .line 135
    sget-object v1, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->UPDATE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_0
    iget-wide v2, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->localId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->localId:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Replacing localId=%d with newLocalId =%d before it was written!"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->localId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 141
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 140
    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-direct {p0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->resetSongData()V

    .line 144
    :cond_0
    iput-wide p1, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->localId:J

    .line 145
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->insertTimelineCardDelayMs:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 146
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    .prologue
    .line 158
    sget-object v1, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->UPDATE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_0
    iput-object p1, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->trackName:Ljava/lang/String;

    .line 160
    iput-object p2, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->albumName:Ljava/lang/String;

    .line 161
    iput-object p3, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->artistName:Ljava/lang/String;

    .line 162
    iput-wide p4, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->duration:J

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->isMetadataSet:Z

    .line 165
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->insertTimelineCardDelayMs:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 166
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
