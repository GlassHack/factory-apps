.class public Lcom/google/glass/sync/UploadSyncHelper;
.super Lcom/google/glass/sync/AbstractTimelineSyncHelper;
.source "UploadSyncHelper.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;
    }
.end annotation


# static fields
.field static final BAD_BTSNOOP_PATH:Ljava/lang/String; = "/sdcard/btsnoop_hci.log"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final PARSER:Lcom/google/glass/protobuf/ProtoParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/protobuf/ProtoParser",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final UPLOADABLE_CONTENT_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final attachmentManager:Lcom/google/glass/sync/AttachmentManager;

.field private final attachmentUploader:Lcom/google/glass/timeline/AttachmentUploader;

.field private final clock:Lcom/google/glass/time/Clock;

.field private final failedToSyncTimelineIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile isUploadingOpportunisticItem:Z

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

.field private final timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field private timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

.field private final timelineSyncServiceConnection:Lcom/google/glass/util/SafeServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 85
    new-instance v0, Lcom/google/glass/protobuf/ProtoParser;

    new-instance v1, Lcom/google/glass/sync/UploadSyncHelper$1;

    invoke-direct {v1}, Lcom/google/glass/sync/UploadSyncHelper$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/protobuf/ProtoParser;-><init>(Lcom/google/glass/protobuf/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/sync/UploadSyncHelper;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    .line 96
    const-string v0, "image/jpeg"

    const-string v1, "video/mp4"

    const-string v2, "text/plain"

    const-string v3, "image/png"

    const-string v4, "application/octet-stream"

    const-string v5, "proto/search"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "application/vnd.google-glass.phone-call-proto"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "proto/glass+music"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "audio/wav"

    aput-object v8, v6, v7

    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/UploadSyncHelper;->UPLOADABLE_CONTENT_TYPES:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/sync/SyncStatusReporter;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/PowerHelper;Lcom/google/glass/util/WifiHelper;Lcom/google/glass/timeline/AttachmentUploader;Lcom/google/glass/timeline/TimelineHelper;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/time/Clock;Lcom/google/glass/sync/AttachmentManager;)V
    .locals 2
    .param p1, "application"    # Landroid/content/Context;
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p3, "syncReporter"    # Lcom/google/glass/sync/SyncStatusReporter;
    .param p4, "batteryHelper"    # Lcom/google/glass/util/BatteryHelper;
    .param p5, "powerHelper"    # Lcom/google/glass/util/PowerHelper;
    .param p6, "wifiHelper"    # Lcom/google/glass/util/WifiHelper;
    .param p7, "attachmentUploader"    # Lcom/google/glass/timeline/AttachmentUploader;
    .param p8, "timelineHelper"    # Lcom/google/glass/timeline/TimelineHelper;
    .param p9, "timelineItemDatabaseHelper"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .param p10, "clock"    # Lcom/google/glass/time/Clock;
    .param p11, "attachmentManager"    # Lcom/google/glass/sync/AttachmentManager;

    .prologue
    .line 164
    invoke-direct/range {p0 .. p6}, Lcom/google/glass/sync/AbstractTimelineSyncHelper;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/sync/SyncStatusReporter;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/PowerHelper;Lcom/google/glass/util/WifiHelper;)V

    .line 79
    const-string v0, "glass_sync"

    .line 80
    invoke-static {p0, v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 130
    new-instance v0, Lcom/google/glass/sync/UploadSyncHelper$2;

    sget-object v1, Lcom/google/glass/sync/SyncHelper;->TIMELINE_SYNC_SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/sync/UploadSyncHelper$2;-><init>(Lcom/google/glass/sync/UploadSyncHelper;Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/google/glass/sync/UploadSyncHelper;->timelineSyncServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

    .line 166
    iput-object p7, p0, Lcom/google/glass/sync/UploadSyncHelper;->attachmentUploader:Lcom/google/glass/timeline/AttachmentUploader;

    .line 167
    iput-object p9, p0, Lcom/google/glass/sync/UploadSyncHelper;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 168
    iput-object p8, p0, Lcom/google/glass/sync/UploadSyncHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    .line 169
    iput-object p10, p0, Lcom/google/glass/sync/UploadSyncHelper;->clock:Lcom/google/glass/time/Clock;

    .line 170
    iput-object p11, p0, Lcom/google/glass/sync/UploadSyncHelper;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    .line 171
    new-instance v0, Lcom/google/android/util/ArraySet;

    invoke-direct {v0}, Lcom/google/android/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/sync/UploadSyncHelper;->failedToSyncTimelineIds:Ljava/util/Set;

    .line 172
    iget-object v0, p0, Lcom/google/glass/sync/UploadSyncHelper;->timelineSyncServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/SafeServiceConnection;->bind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/sync/UploadSyncHelper;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/UploadSyncHelper;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/sync/UploadSyncHelper;Lcom/google/glass/sync/ITimelineSyncService;)Lcom/google/glass/sync/ITimelineSyncService;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/sync/UploadSyncHelper;
    .param p1, "x1"    # Lcom/google/glass/sync/ITimelineSyncService;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/glass/sync/UploadSyncHelper;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/glass/sync/UploadSyncHelper;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/UploadSyncHelper;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/glass/sync/UploadSyncHelper;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    return-object v0
.end method

.method private bufferAndUploadAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/io/FileInputStream;JLcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;Lcom/google/glass/sync/SyncStats;)Ljava/lang/String;
    .locals 12
    .param p1, "attachment"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .param p2, "requestItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p3, "inputStream"    # Ljava/io/FileInputStream;
    .param p4, "lastModifiedMillis"    # J
    .param p6, "uploadedBytesCounter"    # Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;
    .param p7, "syncStats"    # Lcom/google/glass/sync/SyncStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/google/glass/timeline/UploadException;
        }
    .end annotation

    .prologue
    .line 637
    invoke-static {p3}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 639
    .local v3, "buffer":[B
    iget-object v1, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Using standard attachment upload [id=%s, name=%s]."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 640
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 639
    invoke-interface {v1, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 642
    new-instance v11, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v11}, Lcom/google/glass/time/Stopwatch;-><init>()V

    .line 643
    .local v11, "stopwatch":Lcom/google/glass/time/Stopwatch;
    invoke-virtual {v11}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 645
    iget-object v1, p0, Lcom/google/glass/sync/UploadSyncHelper;->attachmentUploader:Lcom/google/glass/timeline/AttachmentUploader;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 646
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/sync/UploadSyncHelper;->application:Landroid/content/Context;

    .line 647
    invoke-static {v5, p2, p1}, Lcom/google/glass/timeline/AttachmentHelper;->getAttachmentSource(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/lang/String;

    move-result-object v7

    move-wide/from16 v5, p4

    .line 645
    invoke-virtual/range {v1 .. v7}, Lcom/google/glass/timeline/AttachmentUploader;->insertAttachmentToServer(Ljava/lang/String;[BLjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 649
    .local v10, "attachmentId":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 651
    array-length v1, v3

    int-to-long v1, v1

    move-object/from16 v0, p6

    invoke-static {v0, v1, v2}, Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;->access$202(Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;J)J

    .line 652
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v5

    array-length v1, v3

    int-to-long v6, v1

    .line 653
    invoke-virtual {v11}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v8

    move-object/from16 v4, p7

    .line 652
    invoke-virtual/range {v4 .. v9}, Lcom/google/glass/sync/SyncStats;->trackUpload(Ljava/lang/String;JJ)V

    .line 655
    return-object v10
.end method

.method private createUpstreamSyncRequest(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;
    .locals 7
    .param p1, "baseItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "requestItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p3, "pendingActions"    # Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 336
    new-instance v3, Lcom/google/glass/util/SettingsSecure;

    iget-object v4, p0, Lcom/google/glass/sync/UploadSyncHelper;->application:Landroid/content/Context;

    .line 337
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    .line 336
    invoke-virtual {p0, v3}, Lcom/google/glass/sync/UploadSyncHelper;->createSyncRequest(Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;

    move-result-object v2

    .line 338
    .local v2, "request":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsDeleted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;-><init>()V

    .line 341
    .local v0, "delete":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->setTimelineItemId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    .line 342
    iget-object v3, p3, Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;->actions:Ljava/util/List;

    new-array v4, v5, [Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    iput-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 343
    new-array v3, v6, [Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    aput-object v0, v3, v5

    iput-object v3, v2, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    .line 351
    .end local v0    # "delete":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;
    :goto_0
    return-object v2

    .line 345
    :cond_0
    new-instance v1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;-><init>()V

    .line 346
    .local v1, "iroc":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;
    invoke-virtual {v1, p2}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    .line 347
    iget-object v3, p3, Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;->actions:Ljava/util/List;

    new-array v4, v5, [Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    iput-object v3, v1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 348
    new-array v3, v6, [Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    aput-object v1, v3, v5

    iput-object v3, v2, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    goto :goto_0
.end method

.method private getAllowedSyncProtocols()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 913
    new-array v2, v6, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 915
    .local v1, "syncProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/google/glass/sync/UploadSyncHelper;->safeGetOverridePolicy()Lcom/google/glass/sync/OverridePolicy;

    move-result-object v0

    .line 917
    .local v0, "overridePolicy":Lcom/google/glass/sync/OverridePolicy;
    iget-object v2, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "The current override policy is [overridePolicy=%s]."

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 918
    sget-object v2, Lcom/google/glass/sync/OverridePolicy;->PHOTOS:Lcom/google/glass/sync/OverridePolicy;

    invoke-virtual {v2, v0}, Lcom/google/glass/sync/OverridePolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/glass/sync/OverridePolicy;->ALL_MEDIA:Lcom/google/glass/sync/OverridePolicy;

    .line 919
    invoke-virtual {v2, v0}, Lcom/google/glass/sync/OverridePolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/sync/UploadSyncHelper;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 920
    invoke-virtual {v2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->shouldSyncOpportunisticItems()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 921
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    iget-object v2, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "OPPORTUNISTIC sync protocol is in effect."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 927
    :cond_1
    return-object v1
.end method

.method private getAttachmentIdIfAlreadyUploaded(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;
    .locals 8
    .param p1, "attachment"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .param p2, "requestItemBuilder"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 722
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v0

    .line 724
    .local v0, "attachmentId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 725
    invoke-static {v0}, Lcom/google/glass/sync/LocalIdGenerator;->isId(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 726
    iget-object v2, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Attachment has a local ID. Will upload. [timelineId=%s, attachmentId=%s]."

    new-array v4, v5, [Ljava/lang/Object;

    .line 727
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    .line 726
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 761
    :goto_0
    return-object v1

    .line 730
    :cond_0
    iget-object v1, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Attachment previously uploaded. Skipping. [timelineId=%s, attachmentId=%s]."

    new-array v3, v5, [Ljava/lang/Object;

    .line 731
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 730
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    .line 732
    goto :goto_0

    .line 736
    :cond_1
    iget-object v2, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Attachment does not have an ID in the protobuf -- checking upload tracker for a previous upload."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 742
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 743
    iget-object v2, p0, Lcom/google/glass/sync/UploadSyncHelper;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/sync/AttachmentManager;->getIdMappingForPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 745
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 749
    iget-object v1, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Attachment ID present in upload tracker, but not present in protobuf. Will set [timelineId=%s, attachmentId=%s]."

    new-array v3, v5, [Ljava/lang/Object;

    .line 750
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    .line 749
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    .line 751
    goto :goto_0

    .line 753
    :cond_2
    iget-object v2, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Attachment ID not present in upload tracker, will upload [timelineId=%s]."

    new-array v4, v7, [Ljava/lang/Object;

    .line 754
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 753
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 757
    :cond_3
    iget-object v2, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Attachment has no client cache path or ID. This attachment will be replaced with an empty protobuf [timelineId=%s]."

    new-array v4, v7, [Ljava/lang/Object;

    .line 758
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 757
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleItemsSyncedToCloud(Ljava/util/Queue;Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)Z
    .locals 7
    .param p2, "response"    # Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;
    .param p3, "updatedItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p4, "errorCode"    # Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;",
            "Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            "Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "unsyncedItems":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 880
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v3

    .line 906
    :goto_0
    return v1

    .line 886
    :cond_1
    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    .line 887
    .local v0, "unsyncedItemId":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/sync/UploadSyncHelper;->failedToSyncTimelineIds:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p2, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    .line 888
    invoke-static {v1}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p2, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    .line 889
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 890
    :cond_2
    iget-object v1, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Failed to sync [itemId=%s]."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-interface {v1, v4, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 892
    iget-object v1, p0, Lcom/google/glass/sync/UploadSyncHelper;->failedToSyncTimelineIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 893
    iget-object v1, p0, Lcom/google/glass/sync/UploadSyncHelper;->syncReporter:Lcom/google/glass/sync/SyncStatusReporter;

    invoke-interface {v1, p4}, Lcom/google/glass/sync/SyncStatusReporter;->handleFail(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V

    move v1, v3

    .line 895
    goto :goto_0

    .line 900
    :cond_3
    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 902
    iget-object v1, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Successfully synced to cloud [itemId=%s]."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-interface {v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 903
    invoke-direct {p0, p3}, Lcom/google/glass/sync/UploadSyncHelper;->markAsSynced(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 904
    iget-object v1, p0, Lcom/google/glass/sync/UploadSyncHelper;->syncReporter:Lcom/google/glass/sync/SyncStatusReporter;

    invoke-interface {v1}, Lcom/google/glass/sync/SyncStatusReporter;->handleSuccess()V

    move v1, v2

    .line 906
    goto :goto_0
.end method

.method private isUploadableAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z
    .locals 2
    .param p1, "attachment"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .prologue
    .line 359
    const-string v0, "/sdcard/btsnoop_hci.log"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    const/4 v0, 0x0

    .line 363
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/google/glass/sync/UploadSyncHelper;->UPLOADABLE_CONTENT_TYPES:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private markAsSynced(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 2
    .param p1, "syncedItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 963
    iget-object v0, p0, Lcom/google/glass/sync/UploadSyncHelper;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    new-instance v1, Lcom/google/glass/sync/UploadSyncHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/sync/UploadSyncHelper$3;-><init>(Lcom/google/glass/sync/UploadSyncHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;)V

    .line 1032
    return-void
.end method

.method private safeGetOverridePolicy()Lcom/google/glass/sync/OverridePolicy;
    .locals 4

    .prologue
    .line 1059
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/sync/UploadSyncHelper;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/sync/UploadSyncHelper;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    .line 1060
    invoke-interface {v1}, Lcom/google/glass/sync/ITimelineSyncService;->getOverridePolicy()Lcom/google/glass/sync/OverridePolicy;

    move-result-object v1

    .line 1063
    :goto_0
    return-object v1

    .line 1060
    :cond_0
    sget-object v1, Lcom/google/glass/sync/OverridePolicy;->NONE:Lcom/google/glass/sync/OverridePolicy;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1061
    :catch_0
    move-exception v0

    .line 1062
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unable to get override policy."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1063
    sget-object v1, Lcom/google/glass/sync/OverridePolicy;->NONE:Lcom/google/glass/sync/OverridePolicy;

    goto :goto_0
.end method

.method private saveLinkToCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "originalPath"    # Ljava/lang/String;
    .param p2, "attachmentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 490
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    .line 492
    .local v0, "cachedFilesManager":Lcom/google/glass/util/CachedFilesManager;
    sget-object v3, Lcom/google/glass/util/FileType;->ATTACHMENT:Lcom/google/glass/util/FileType;

    invoke-virtual {v0, v3, p2}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/FileType;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 493
    sget-object v3, Lcom/google/glass/util/FileType;->ATTACHMENT:Lcom/google/glass/util/FileType;

    invoke-virtual {v0, v3, p2}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, "cachedPath":Ljava/lang/String;
    sget-object v3, Lcom/google/glass/util/FileType;->ATTACHMENT:Lcom/google/glass/util/FileType;

    invoke-virtual {v0, v3, p1, p2}, Lcom/google/glass/util/CachedFilesManager;->saveLink(Lcom/google/glass/util/FileType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 498
    .local v2, "success":Z
    if-nez v2, :cond_1

    .line 499
    iget-object v3, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Failed to save hardlink to cache [attachmentId=%s, srcFileName=%s, destFileName=%s]."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v6

    aput-object p1, v5, v7

    aput-object v1, v5, v8

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    .end local v1    # "cachedPath":Ljava/lang/String;
    .end local v2    # "success":Z
    :cond_0
    :goto_0
    return-void

    .line 502
    .restart local v1    # "cachedPath":Ljava/lang/String;
    .restart local v2    # "success":Z
    :cond_1
    iget-object v3, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Saved hardlink [originalPath=%s, cachedPath=%s]."

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object v1, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private syncItemToCloud(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/sync/SyncStats;)Landroid/util/Pair;
    .locals 22
    .param p1, "baseItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "syncStats"    # Lcom/google/glass/sync/SyncStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            "Lcom/google/glass/sync/SyncStats;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/timeline/UploadException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 256
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.glass.sync.SYNC_STATUS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "item_id"

    .line 257
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v16

    .line 258
    .local v16, "syncing":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/sync/UploadSyncHelper;->application:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/sync/UploadSyncHelper;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    if-eqz v3, :cond_0

    .line 262
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/sync/UploadSyncHelper;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/glass/sync/ITimelineSyncService;->notifySyncItemStart(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :cond_0
    :goto_0
    :try_start_1
    new-instance v15, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v15}, Lcom/google/glass/time/Stopwatch;-><init>()V

    .line 269
    .local v15, "stopwatch":Lcom/google/glass/time/Stopwatch;
    invoke-virtual {v15}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 270
    new-instance v17, Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;

    invoke-direct/range {v17 .. v17}, Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;-><init>()V

    .line 271
    .local v17, "uploadedBytesCounter":Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/sync/UploadSyncHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_UPSTREAM_SYNC_STARTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 275
    invoke-static/range {p1 .. p1}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v14

    .line 278
    .local v14, "requestItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    sget-object v3, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iput-object v3, v14, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 281
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v3}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 283
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncProtocol()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/glass/sync/UploadSyncHelper;->isUploadingOpportunisticItem:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    :try_start_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v14, v3, v1, v2}, Lcom/google/glass/sync/UploadSyncHelper;->addAttachments(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;Lcom/google/glass/sync/SyncStats;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 290
    const/4 v3, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/glass/sync/UploadSyncHelper;->isUploadingOpportunisticItem:Z

    .line 295
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/sync/UploadSyncHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/sync/UploadSyncHelper;->application:Landroid/content/Context;

    .line 296
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    .line 295
    invoke-virtual {v3, v4, v7}, Lcom/google/glass/timeline/TimelineHelper;->getPendingActions(Landroid/content/Context;Ljava/lang/String;)Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;

    move-result-object v12

    .line 299
    .local v12, "pendingActions":Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v12}, Lcom/google/glass/sync/UploadSyncHelper;->createUpstreamSyncRequest(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;

    move-result-object v13

    .line 300
    .local v13, "request":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->getPrimaryDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v9

    .line 302
    .local v9, "dispatcher":Lcom/google/glass/net/ProtoRequestDispatcher;
    sget-object v3, Lcom/google/glass/net/ServerConstants$Action;->TIMELINE_SYNC:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v4, Lcom/google/glass/sync/UploadSyncHelper;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    invoke-virtual {v9, v3, v13, v4}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/protobuf/ProtoParser;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v18

    .line 304
    .local v18, "wrapper":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;>;"
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/net/ProtoResponse;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_6

    .line 305
    :cond_2
    if-nez v18, :cond_5

    sget-object v11, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->INTERNAL_ERROR:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    .line 308
    .local v11, "errorCode":Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;
    :goto_2
    new-instance v3, Lcom/google/glass/timeline/UploadException;

    const/4 v4, 0x0

    const-string v7, "Error executing TimelineSyncRequest of timeline item [timelineId="

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 310
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, 0x2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v21

    add-int v20, v20, v21

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v11, v4, v7}, Lcom/google/glass/timeline/UploadException;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 323
    .end local v9    # "dispatcher":Lcom/google/glass/net/ProtoRequestDispatcher;
    .end local v11    # "errorCode":Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;
    .end local v12    # "pendingActions":Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;
    .end local v13    # "request":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;
    .end local v14    # "requestItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v15    # "stopwatch":Lcom/google/glass/time/Stopwatch;
    .end local v17    # "uploadedBytesCounter":Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;
    .end local v18    # "wrapper":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;>;"
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/sync/UploadSyncHelper;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    if-eqz v4, :cond_3

    .line 325
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/sync/UploadSyncHelper;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lcom/google/glass/sync/ITimelineSyncService;->notifySyncItemComplete(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 329
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/sync/UploadSyncHelper;->application:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.google.glass.sync.SYNC_STATUS"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    :cond_3
    throw v3

    .line 263
    :catch_0
    move-exception v10

    .line 264
    .local v10, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Failed to start syncing %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v7, v8

    invoke-interface {v3, v4, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 283
    .end local v10    # "e":Landroid/os/RemoteException;
    .restart local v14    # "requestItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .restart local v15    # "stopwatch":Lcom/google/glass/time/Stopwatch;
    .restart local v17    # "uploadedBytesCounter":Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 290
    :catchall_1
    move-exception v3

    const/4 v4, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/glass/sync/UploadSyncHelper;->isUploadingOpportunisticItem:Z

    throw v3

    .line 307
    .restart local v9    # "dispatcher":Lcom/google/glass/net/ProtoRequestDispatcher;
    .restart local v12    # "pendingActions":Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;
    .restart local v13    # "request":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;
    .restart local v18    # "wrapper":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;>;"
    :cond_5
    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/net/ProtoResponse;->getErrorCode()Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    move-result-object v11

    goto/16 :goto_2

    .line 314
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/sync/UploadSyncHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/sync/UploadSyncHelper;->application:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    iget-wide v0, v12, Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;->maxRowId:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v3, v4, v7, v0, v1}, Lcom/google/glass/timeline/TimelineHelper;->deletePendingActions(Landroid/content/Context;Ljava/lang/String;J)V

    .line 316
    invoke-virtual {v13}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->getCachedSize()I

    move-result v3

    int-to-long v3, v3

    invoke-static/range {v17 .. v17}, Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;->access$200(Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;)J

    move-result-wide v7

    add-long v5, v3, v7

    .line 317
    .local v5, "totalBytes":J
    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_UPSTREAM_SYNC_FINISHED_SUCCESSFULLY:Lcom/google/glass/userevent/UserEventAction;

    .line 318
    invoke-virtual {v15}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v7

    move-object/from16 v3, p0

    .line 317
    invoke-virtual/range {v3 .. v8}, Lcom/google/glass/sync/UploadSyncHelper;->logSyncMetrics(Lcom/google/glass/userevent/UserEventAction;JJ)V

    .line 320
    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v3

    invoke-static {v3, v14}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    .line 323
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/sync/UploadSyncHelper;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    if-eqz v4, :cond_7

    .line 325
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/sync/UploadSyncHelper;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lcom/google/glass/sync/ITimelineSyncService;->notifySyncItemComplete(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 329
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/sync/UploadSyncHelper;->application:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.google.glass.sync.SYNC_STATUS"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    :cond_7
    return-object v3

    .line 326
    :catch_1
    move-exception v10

    .line 327
    .restart local v10    # "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Failed to notify sync complete for item %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v19, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v8, v19

    invoke-interface {v4, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 326
    .end local v5    # "totalBytes":J
    .end local v9    # "dispatcher":Lcom/google/glass/net/ProtoRequestDispatcher;
    .end local v10    # "e":Landroid/os/RemoteException;
    .end local v12    # "pendingActions":Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;
    .end local v13    # "request":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;
    .end local v14    # "requestItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v15    # "stopwatch":Lcom/google/glass/time/Stopwatch;
    .end local v17    # "uploadedBytesCounter":Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;
    .end local v18    # "wrapper":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;>;"
    :catch_2
    move-exception v10

    .line 327
    .restart local v10    # "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Failed to notify sync complete for item %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v19, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v8, v19

    invoke-interface {v4, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3
.end method

.method private syncNextUnsyncedItem(Ljava/util/Queue;Lcom/google/glass/sync/SyncStats;)Z
    .locals 13
    .param p2, "syncStats"    # Lcom/google/glass/sync/SyncStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;",
            "Lcom/google/glass/sync/SyncStats;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 813
    .local p1, "unsyncedItems":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 814
    iget-object v8, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "No unsynced items."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 815
    const/4 v8, 0x0

    .line 860
    :goto_0
    return v8

    .line 820
    :cond_0
    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 821
    .local v3, "nextItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-direct {p0}, Lcom/google/glass/sync/UploadSyncHelper;->getAllowedSyncProtocols()Ljava/util/List;

    move-result-object v6

    .line 823
    .local v6, "syncProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncProtocol()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 824
    iget-object v8, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Skipping sync of item due to protocol mismatch [itemId=%s, syncProtocol=%s, uploadOpportunistic=%s]."

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 825
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncProtocol()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x1

    .line 826
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    .line 824
    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 827
    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 829
    const/4 v8, 0x1

    goto :goto_0

    .line 832
    :cond_1
    iget-object v8, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Syncing next item [itemId=%s, syncProtocol=%s, uploadOpportunistic=%s]."

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 833
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncProtocol()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x1

    .line 834
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    .line 832
    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 837
    const/4 v7, 0x0

    .line 838
    .local v7, "syncResponse":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;
    const/4 v4, 0x0

    .line 839
    .local v4, "requestItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    sget-object v2, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->INTERNAL_ERROR:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    .line 841
    .local v2, "errorCode":Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;
    :try_start_0
    invoke-direct {p0, v3, p2}, Lcom/google/glass/sync/UploadSyncHelper;->syncItemToCloud(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/sync/SyncStats;)Landroid/util/Pair;

    move-result-object v5

    .line 842
    .local v5, "response":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    if-eqz v5, :cond_2

    .line 843
    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, v8

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;

    move-object v7, v0

    .line 844
    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, v8

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-object v4, v0
    :try_end_0
    .catch Lcom/google/glass/timeline/UploadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    .end local v5    # "response":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    :cond_2
    :goto_1
    if-nez v7, :cond_3

    .line 857
    iget-object v8, p0, Lcom/google/glass/sync/UploadSyncHelper;->failedToSyncTimelineIds:Ljava/util/Set;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 860
    :cond_3
    invoke-direct {p0, p1, v7, v4, v2}, Lcom/google/glass/sync/UploadSyncHelper;->handleItemsSyncedToCloud(Ljava/util/Queue;Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)Z

    move-result v8

    goto/16 :goto_0

    .line 846
    :catch_0
    move-exception v1

    .line 847
    .local v1, "e":Lcom/google/glass/timeline/UploadException;
    invoke-virtual {v1}, Lcom/google/glass/timeline/UploadException;->getMimeType()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 848
    iget-object v8, p0, Lcom/google/glass/sync/UploadSyncHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v9, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_UPSTREAM_SYNC_FINISHED_WITH_ERROR:Lcom/google/glass/userevent/UserEventAction;

    const-string v10, "1"

    invoke-virtual {v8, v9, v10}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 852
    :cond_4
    iget-object v8, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Failed upload of item [timelineId=%s]."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-interface {v8, v1, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 853
    invoke-virtual {v1}, Lcom/google/glass/timeline/UploadException;->getErrorCode()Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    move-result-object v2

    goto :goto_1
.end method

.method private transferAndCacheAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;Lcom/google/glass/sync/SyncStats;)Ljava/lang/String;
    .locals 11
    .param p1, "attachment"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .param p2, "requestItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p3, "uploadedBytesCounter"    # Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;
    .param p4, "syncStats"    # Lcom/google/glass/sync/SyncStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;,
            Lcom/google/glass/timeline/UploadException;,
            Landroid/os/RemoteException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 677
    invoke-direct {p0, p1, p2}, Lcom/google/glass/sync/UploadSyncHelper;->getAttachmentIdIfAlreadyUploaded(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;

    move-result-object v8

    .line 678
    .local v8, "attachmentId":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 711
    .end local v8    # "attachmentId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v8

    .line 682
    .restart local v8    # "attachmentId":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 683
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "No client cache path for attachment [timelineId=%s, attachmentId=%s]"

    new-array v2, v2, [Ljava/lang/Object;

    .line 684
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    .line 683
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_2
    new-instance v9, Ljava/io/File;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 689
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    .line 690
    :cond_3
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 691
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2d

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Missing or empty file for attachment [path="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 694
    :cond_4
    iget-object v0, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Attachment not yet uploaded [timelineId=%s, file=%s]."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 695
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    .line 694
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    const/4 v10, 0x0

    .line 700
    .local v10, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/glass/sync/UploadSyncHelper;->shouldStreamUpload(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 703
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/sync/UploadSyncHelper;->uploadAttachmentAsStream(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/io/FileInputStream;JLcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;Lcom/google/glass/sync/SyncStats;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 710
    .end local v8    # "attachmentId":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 711
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_0

    .line 707
    .restart local v8    # "attachmentId":Ljava/lang/String;
    :cond_5
    :try_start_2
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/sync/UploadSyncHelper;->bufferAndUploadAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/io/FileInputStream;JLcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;Lcom/google/glass/sync/SyncStats;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v8

    .line 710
    .end local v8    # "attachmentId":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 711
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_0

    .line 710
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "attachmentId":Ljava/lang/String;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v0

    move-object v3, v10

    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v3, :cond_6

    .line 711
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_6
    throw v0

    .line 710
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private transferAndCacheUsingAttachmentManager(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;Lcom/google/glass/sync/SyncStats;)Ljava/lang/String;
    .locals 9
    .param p1, "attachment"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .param p2, "requestItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p3, "uploadedBytesCounter"    # Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;
    .param p4, "syncStats"    # Lcom/google/glass/sync/SyncStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 538
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/sync/LocalIdGenerator;->isId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Attachment has already been synced [attachmentId=%s, filename=%s]."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 540
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 539
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 541
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v8

    .line 606
    :goto_0
    return-object v8

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/google/glass/sync/UploadSyncHelper;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/sync/AttachmentManager;->isSynced(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 545
    iget-object v0, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Attachment was previously synced, but does not have a remote ID set [itemId=%s, attachmentId=%s]."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 546
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 545
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    iget-object v0, p0, Lcom/google/glass/sync/UploadSyncHelper;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    .line 549
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/sync/AttachmentManager;->getIdMappingForPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 551
    .local v8, "syncedAttachmentId":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 552
    iget-object v0, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Attachment previously uploaded -- setting the ID [itemId=%s, attachmentId=%s, syncedId=%s]."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 553
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x2

    aput-object v8, v2, v6

    .line 552
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Attachment previously uploaded, but AttachmentUploadTracker does not have the remote ID! This should not happen -- returning null at our own peril! [itemId=%s, attachmentId=%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 563
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 561
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 564
    const/4 v8, 0x0

    goto :goto_0

    .line 570
    .end local v8    # "syncedAttachmentId":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    .line 571
    .local v3, "inputStream":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 574
    .restart local v8    # "syncedAttachmentId":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/sync/UploadSyncHelper;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/sync/AttachmentManager;->getLastModifiedMillis(Ljava/lang/String;)J

    move-result-wide v4

    .line 575
    .local v4, "modificationTime":J
    iget-object v0, p0, Lcom/google/glass/sync/UploadSyncHelper;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/sync/AttachmentManager;->openAttachment(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 577
    if-nez v3, :cond_4

    .line 580
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Unable to open attachment for reading [itemId=%s, attachmentId=%s]."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 581
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 580
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    .end local v4    # "modificationTime":J
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_3

    .line 593
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_3
    throw v0

    .line 584
    .restart local v4    # "modificationTime":J
    :cond_4
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/glass/sync/UploadSyncHelper;->shouldStreamUpload(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    .line 585
    invoke-direct/range {v0 .. v7}, Lcom/google/glass/sync/UploadSyncHelper;->uploadAttachmentAsStream(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/io/FileInputStream;JLcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;Lcom/google/glass/sync/SyncStats;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 592
    :goto_1
    if-eqz v3, :cond_5

    .line 593
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 597
    :cond_5
    if-nez v8, :cond_7

    .line 598
    iget-object v0, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unable to upload attachment -- returning null [itemId=%s, attachmentId=%s]."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 599
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 598
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 600
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_6
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    .line 588
    :try_start_2
    invoke-direct/range {v0 .. v7}, Lcom/google/glass/sync/UploadSyncHelper;->bufferAndUploadAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/io/FileInputStream;JLcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;Lcom/google/glass/sync/SyncStats;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    goto :goto_1

    .line 603
    :cond_7
    iget-object v0, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Attachment uploaded -- marking as synced [itemId=%s, attachmentId=%s, syncedId=%s]."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 604
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x2

    aput-object v8, v2, v6

    .line 603
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 605
    iget-object v0, p0, Lcom/google/glass/sync/UploadSyncHelper;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/google/glass/sync/AttachmentManager;->markAsSynced(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method private uploadAttachmentAsStream(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/io/FileInputStream;JLcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;Lcom/google/glass/sync/SyncStats;)Ljava/lang/String;
    .locals 14
    .param p1, "attachment"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .param p2, "requestItemBuilder"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p3, "inputStream"    # Ljava/io/FileInputStream;
    .param p4, "lastModifiedMillis"    # J
    .param p6, "uploadedBytesCounter"    # Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;
    .param p7, "syncStats"    # Lcom/google/glass/sync/SyncStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 771
    iget-object v1, p0, Lcom/google/glass/sync/UploadSyncHelper;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v1}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v10

    .line 773
    .local v10, "startMs":J
    iget-object v1, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Using session manager to upload attachment [fileName=%s, timelineId=%s]."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 774
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 773
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 776
    const/4 v8, 0x0

    .line 779
    .local v8, "attachmentId":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/sync/UploadSyncHelper;->attachmentUploader:Lcom/google/glass/timeline/AttachmentUploader;

    .line 780
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/sync/UploadSyncHelper;->application:Landroid/content/Context;

    .line 781
    move-object/from16 v0, p2

    invoke-static {v4, v0, p1}, Lcom/google/glass/timeline/AttachmentHelper;->getAttachmentSource(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/lang/String;

    move-result-object v6

    move-wide/from16 v4, p4

    move-object/from16 v7, p3

    .line 779
    invoke-virtual/range {v1 .. v7}, Lcom/google/glass/timeline/AttachmentUploader;->insertAttachmentViaSessionManager(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/io/FileInputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/auth/InvalidCredentialsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 789
    :goto_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 790
    new-instance v1, Lcom/google/glass/timeline/UploadException;

    sget-object v2, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->INTERNAL_ERROR:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    .line 791
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to upload attachment [fileName="

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 792
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 793
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0xf

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", timelineId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/timeline/UploadException;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 783
    :catch_0
    move-exception v9

    .line 784
    .local v9, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Caught an IOException while doing an upload"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v9, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 785
    .end local v9    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v9

    .line 786
    .local v9, "e":Lorg/apache/http/auth/InvalidCredentialsException;
    iget-object v1, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Client proxy says our credentials are bad"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v9, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 795
    .end local v9    # "e":Lorg/apache/http/auth/InvalidCredentialsException;
    :cond_0
    iget-object v1, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Attachment uploaded successfully [name=%s, attachmentId=%s]."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 796
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v8, v3, v4

    .line 795
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 797
    invoke-static/range {p6 .. p6}, Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;->access$200(Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    add-long/2addr v1, v3

    move-object/from16 v0, p6

    invoke-static {v0, v1, v2}, Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;->access$202(Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;J)J

    .line 798
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    iget-object v1, p0, Lcom/google/glass/sync/UploadSyncHelper;->clock:Lcom/google/glass/time/Clock;

    .line 799
    invoke-interface {v1}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v10

    move-object/from16 v1, p7

    .line 798
    invoke-virtual/range {v1 .. v6}, Lcom/google/glass/sync/SyncStats;->trackUpload(Ljava/lang/String;JJ)V

    .line 802
    return-object v8
.end method


# virtual methods
.method addAttachments(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;Lcom/google/glass/sync/SyncStats;)V
    .locals 17
    .param p1, "requestItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "attachments"    # [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .param p3, "uploadedBytesCounter"    # Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;
    .param p4, "syncStats"    # Lcom/google/glass/sync/SyncStats;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/timeline/UploadException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 371
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v7, "attachmentsToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    move-object/from16 v0, p2

    array-length v11, v0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v11, :cond_4

    aget-object v4, p2, v10

    .line 373
    .local v4, "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/glass/sync/UploadSyncHelper;->isUploadableAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 378
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v13, "Skipping non-uploadable attachment [itemId=%s, contentType=%s]."

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 379
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 378
    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 384
    :cond_0
    const/4 v5, 0x0

    .line 390
    .local v5, "attachmentId":Ljava/lang/String;
    :try_start_0
    sget-object v12, Lcom/google/glass/util/Labs$Feature;->UATS:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v12}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 391
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v13, "UATS lab enabled -- using attachment manager as source of truth [itemId=%s]."

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 392
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 391
    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/glass/sync/UploadSyncHelper;->transferAndCacheUsingAttachmentManager(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;Lcom/google/glass/sync/SyncStats;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/glass/timeline/UploadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v5

    .line 428
    :goto_2
    if-nez v5, :cond_2

    .line 429
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v13, "Null attachment ID should never be returned [attachment=%s]."

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 396
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v13, "UATS lab disabled or attachment ID is empty -- not using attachment manager [itemId=%s]."

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 397
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 396
    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/glass/sync/UploadSyncHelper;->transferAndCacheAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;Lcom/google/glass/sync/SyncStats;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/glass/timeline/UploadException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v5

    goto :goto_2

    .line 401
    :catch_0
    move-exception v8

    .line 402
    .local v8, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v11, "Communication with the AttachmentManager failed. Aborting upload sync [itemId=%s, filename=%s]."

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 403
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 404
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 402
    invoke-interface {v10, v8, v11, v12}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    new-instance v10, Lcom/google/glass/timeline/UploadException;

    sget-object v11, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->INTERNAL_ERROR:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    const-string v12, ""

    const-string v13, "AttachmentManager comms failed."

    invoke-direct {v10, v11, v12, v13, v8}, Lcom/google/glass/timeline/UploadException;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 407
    .end local v8    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 408
    .local v8, "e":Lcom/google/glass/timeline/UploadException;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v11, "Ran into an UploadException while attempting an upload -- aborting upload sync [itemId=%s, filename=%s]."

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 409
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 410
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 408
    invoke-interface {v10, v11, v12}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    throw v8

    .line 412
    .end local v8    # "e":Lcom/google/glass/timeline/UploadException;
    :catch_2
    move-exception v8

    .line 413
    .local v8, "e":Ljava/io/FileNotFoundException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v13, "Skipping upload of missing file, and inserting an empty attachment in place [itemId=%s, filename=%s]."

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 414
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 413
    invoke-interface {v12, v8, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    sget-object v12, Lcom/google/glass/timeline/AttachmentHelper;->EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 421
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v8

    .line 422
    .local v8, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v13, "Skipping upload for bad file -- we had trouble reading from the disk! [itemId=%s, filename=%s]"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 423
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 422
    invoke-interface {v12, v8, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    sget-object v12, Lcom/google/glass/timeline/AttachmentHelper;->EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 432
    .end local v8    # "e":Ljava/io/IOException;
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v13, "Attachment transferred successfully. [attachmentId=%s]."

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    const/4 v6, 0x0

    .line 441
    .local v6, "attachmentIdTracked":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/sync/UploadSyncHelper;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    .line 442
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v13

    .line 441
    invoke-virtual {v12, v13, v5}, Lcom/google/glass/sync/AttachmentManager;->storePathToIdMapping(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5

    move-result v6

    .line 446
    :goto_3
    if-nez v6, :cond_3

    .line 447
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v13, "Couldn\'t store attachment ID in the tracker -- we might upload twice [attachmentId=%s, filename=%s]."

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    const/4 v15, 0x1

    .line 448
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 447
    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    :cond_3
    invoke-static {v4}, Lcom/google/glass/timeline/AttachmentHelper;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-result-object v9

    .line 453
    .local v9, "newAttachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    invoke-virtual {v9, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 454
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    :try_start_3
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5}, Lcom/google/glass/sync/UploadSyncHelper;->saveLinkToCache(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_1

    .line 459
    :catch_4
    move-exception v8

    .line 464
    .restart local v8    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v13, "Couldn\'t store hardlink to cache [attachmentId=%s, srcFileName=%s]."

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    const/4 v15, 0x1

    .line 465
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 464
    invoke-interface {v12, v8, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 443
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "newAttachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :catch_5
    move-exception v8

    .line 444
    .local v8, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v13, "Failed to write path to ID mapping to AttachmentManager."

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-interface {v12, v8, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 473
    .end local v4    # "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v5    # "attachmentId":Ljava/lang/String;
    .end local v6    # "attachmentIdTracked":Z
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_4
    const/4 v10, 0x0

    new-array v10, v10, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-interface {v7, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-object/from16 v0, p1

    iput-object v10, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 474
    return-void
.end method

.method public cancelOpportunisticUpload()V
    .locals 1

    .prologue
    .line 1088
    iget-boolean v0, p0, Lcom/google/glass/sync/UploadSyncHelper;->isUploadingOpportunisticItem:Z

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/google/glass/sync/UploadSyncHelper;->attachmentUploader:Lcom/google/glass/timeline/AttachmentUploader;

    invoke-virtual {v0}, Lcom/google/glass/timeline/AttachmentUploader;->abortResumableInsert()V

    .line 1091
    :cond_0
    return-void
.end method

.method public cancelUpload()V
    .locals 1

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/google/glass/sync/UploadSyncHelper;->attachmentUploader:Lcom/google/glass/timeline/AttachmentUploader;

    invoke-virtual {v0}, Lcom/google/glass/timeline/AttachmentUploader;->abortResumableInsert()V

    .line 1101
    return-void
.end method

.method isUnmodifiedDuringSync(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 6
    .param p1, "syncedItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "actualItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    const/4 v4, 0x0

    .line 936
    iget-object v5, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v5}, Lcom/google/glass/util/ArrayUtils;->length([Ljava/lang/Object;)I

    move-result v3

    .line 937
    .local v3, "syncAttachments":I
    iget-object v5, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v5}, Lcom/google/glass/util/ArrayUtils;->length([Ljava/lang/Object;)I

    move-result v0

    .line 938
    .local v0, "actualAttachments":I
    if-eq v3, v0, :cond_0

    .line 954
    :goto_0
    return v4

    .line 946
    :cond_0
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    .line 947
    .local v2, "filteredSyncedItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    sget-object v5, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iput-object v5, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 948
    invoke-virtual {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 950
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 951
    .local v1, "filteredActualItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    sget-object v5, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iput-object v5, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 952
    invoke-virtual {v1, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 954
    invoke-virtual {v2, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method removeElementsBasedOnOverridePolicy(Ljava/util/Queue;)Ljava/util/Queue;
    .locals 9
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;)",
            "Ljava/util/Queue",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    const/4 v5, 0x0

    .line 225
    invoke-direct {p0}, Lcom/google/glass/sync/UploadSyncHelper;->safeGetOverridePolicy()Lcom/google/glass/sync/OverridePolicy;

    move-result-object v2

    .line 227
    .local v2, "overridePolicy":Lcom/google/glass/sync/OverridePolicy;
    sget-object v4, Lcom/google/glass/sync/OverridePolicy;->PHOTOS:Lcom/google/glass/sync/OverridePolicy;

    if-ne v2, v4, :cond_3

    .line 228
    const/4 v3, 0x0

    .line 229
    .local v3, "skippedCount":I
    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 230
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 231
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v6, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v7, v6

    move v4, v5

    :goto_1
    if-ge v4, v7, :cond_0

    aget-object v0, v6, v4

    .line 232
    .local v0, "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    invoke-static {v0}, Lcom/google/glass/timeline/AttachmentUtils;->isVideo(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 233
    add-int/lit8 v3, v3, 0x1

    .line 234
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 231
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 239
    .end local v0    # "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_2
    if-lez v3, :cond_3

    .line 240
    iget-object v4, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Skipping videos because photos only sync was manually requested [count=%d]."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 241
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    .line 240
    invoke-interface {v4, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    .end local v3    # "skippedCount":I
    :cond_3
    return-object p1
.end method

.method setTimelineSyncService(Lcom/google/glass/sync/ITimelineSyncService;)V
    .locals 0
    .param p1, "timelineSyncService"    # Lcom/google/glass/sync/ITimelineSyncService;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/google/glass/sync/UploadSyncHelper;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    .line 1081
    return-void
.end method

.method shouldStreamUpload(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z
    .locals 3
    .param p1, "attachment"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1041
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 1042
    .local v0, "contentType":Ljava/lang/String;
    const/4 v1, 0x1

    .line 1048
    .local v1, "shouldStream":Z
    const-string v2, "video/mp4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1049
    invoke-static {p1}, Lcom/google/glass/timeline/AttachmentHelper;->isPhotosServiceAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1050
    const/4 v1, 0x0

    .line 1053
    :cond_0
    return v1
.end method

.method public sync(Lcom/google/glass/sync/SyncStats;)V
    .locals 9
    .param p1, "syncStats"    # Lcom/google/glass/sync/SyncStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 180
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/sync/UploadSyncHelper;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    invoke-virtual {v4}, Lcom/google/glass/sync/AttachmentManager;->connect()Z

    move-result v4

    if-nez v4, :cond_0

    .line 181
    iget-object v4, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Unable to connect to the AttachmentManager! Upload sync aborted!"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    iget-object v4, p0, Lcom/google/glass/sync/UploadSyncHelper;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    invoke-virtual {v4}, Lcom/google/glass/sync/AttachmentManager;->close()Z

    .line 218
    :goto_0
    return-void

    .line 186
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/glass/sync/UploadSyncHelper;->getAllowedSyncProtocols()Ljava/util/List;

    move-result-object v1

    .line 187
    .local v1, "allowedSyncProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/google/glass/sync/UploadSyncHelper;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 188
    invoke-virtual {v4, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->getUnsyncedItems(Ljava/util/List;)Ljava/util/Queue;

    move-result-object v0

    .line 189
    .local v0, "allUnsyncedItems":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    invoke-virtual {p0, v0}, Lcom/google/glass/sync/UploadSyncHelper;->removeElementsBasedOnOverridePolicy(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object v3

    .line 191
    .local v3, "unsyncedItems":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 192
    iget-object v4, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "No timeline items to upload."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    iget-object v4, p0, Lcom/google/glass/sync/UploadSyncHelper;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    invoke-virtual {v4}, Lcom/google/glass/sync/AttachmentManager;->close()Z

    goto :goto_0

    .line 198
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Uploading timeline items [count=%d]."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    :cond_2
    :try_start_3
    invoke-direct {p0, v3, p1}, Lcom/google/glass/sync/UploadSyncHelper;->syncNextUnsyncedItem(Ljava/util/Queue;Lcom/google/glass/sync/SyncStats;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v4

    if-nez v4, :cond_2

    .line 204
    :try_start_4
    iget-object v4, p0, Lcom/google/glass/sync/UploadSyncHelper;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_3

    .line 208
    :try_start_5
    iget-object v4, p0, Lcom/google/glass/sync/UploadSyncHelper;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    sget-object v5, Lcom/google/glass/sync/OverridePolicy;->NONE:Lcom/google/glass/sync/OverridePolicy;

    invoke-interface {v4, v5}, Lcom/google/glass/sync/ITimelineSyncService;->setOverridePolicy(Lcom/google/glass/sync/OverridePolicy;)V

    .line 209
    iget-object v4, p0, Lcom/google/glass/sync/UploadSyncHelper;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    invoke-interface {v4}, Lcom/google/glass/sync/ITimelineSyncService;->notifySyncComplete()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 216
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/google/glass/sync/UploadSyncHelper;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    invoke-virtual {v4}, Lcom/google/glass/sync/AttachmentManager;->close()Z

    goto :goto_0

    .line 210
    :catch_0
    move-exception v2

    .line 211
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_6
    iget-object v4, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Failed to trigger timeline service sync."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 216
    .end local v0    # "allUnsyncedItems":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    .end local v1    # "allowedSyncProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "unsyncedItems":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/google/glass/sync/UploadSyncHelper;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    invoke-virtual {v5}, Lcom/google/glass/sync/AttachmentManager;->close()Z

    throw v4

    .line 204
    .restart local v0    # "allUnsyncedItems":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    .restart local v1    # "allowedSyncProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v3    # "unsyncedItems":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    :catchall_1
    move-exception v4

    :try_start_7
    iget-object v5, p0, Lcom/google/glass/sync/UploadSyncHelper;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v5, :cond_4

    .line 208
    :try_start_8
    iget-object v5, p0, Lcom/google/glass/sync/UploadSyncHelper;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    sget-object v6, Lcom/google/glass/sync/OverridePolicy;->NONE:Lcom/google/glass/sync/OverridePolicy;

    invoke-interface {v5, v6}, Lcom/google/glass/sync/ITimelineSyncService;->setOverridePolicy(Lcom/google/glass/sync/OverridePolicy;)V

    .line 209
    iget-object v5, p0, Lcom/google/glass/sync/UploadSyncHelper;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    invoke-interface {v5}, Lcom/google/glass/sync/ITimelineSyncService;->notifySyncComplete()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 212
    :cond_4
    :goto_2
    :try_start_9
    throw v4

    .line 210
    :catch_1
    move-exception v2

    .line 211
    .restart local v2    # "e":Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/google/glass/sync/UploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Failed to trigger timeline service sync."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2
.end method
