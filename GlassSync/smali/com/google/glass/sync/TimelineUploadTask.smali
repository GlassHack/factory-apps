.class public Lcom/google/glass/sync/TimelineUploadTask;
.super Lcom/google/glass/sync/UploadTask;
.source "TimelineUploadTask.java"


# static fields
.field public static final BAD_BTSNOOP_PATH:Ljava/lang/String; = "/sdcard/btsnoop_hci.log"

.field public static final PARSER:Lcom/google/glass/protobuf/ProtoParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/protobuf/ProtoParser",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

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

.field private final context:Landroid/content/Context;

.field private final settingsSecure:Lcom/google/glass/util/SettingsSecure;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 59
    const-class v0, Lcom/google/glass/sync/TimelineUploadTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/TimelineUploadTask;->TAG:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/google/glass/protobuf/ProtoParser;

    new-instance v1, Lcom/google/glass/sync/TimelineUploadTask$1;

    invoke-direct {v1}, Lcom/google/glass/sync/TimelineUploadTask$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/protobuf/ProtoParser;-><init>(Lcom/google/glass/protobuf/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/sync/TimelineUploadTask;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    .line 80
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

    sput-object v0, Lcom/google/glass/sync/TimelineUploadTask;->UPLOADABLE_CONTENT_TYPES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/logging/FormattingLogger;Lcom/google/glass/sync/DeviceStateAggregator;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/content/Context;Lcom/google/glass/timeline/AttachmentUploader;)V
    .locals 8
    .param p1, "parentLogger"    # Lcom/google/glass/logging/FormattingLogger;
    .param p2, "aggregator"    # Lcom/google/glass/sync/DeviceStateAggregator;
    .param p3, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "attachmentUploader"    # Lcom/google/glass/timeline/AttachmentUploader;

    .prologue
    const/4 v6, 0x0

    .line 97
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/sync/TimelineUploadTask;-><init>(Lcom/google/glass/logging/FormattingLogger;Lcom/google/glass/sync/DeviceStateAggregator;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/content/Context;Lcom/google/glass/timeline/AttachmentUploader;Lcom/google/glass/sync/AttachmentManager;Lcom/google/glass/util/SettingsSecure;)V

    .line 99
    return-void
.end method

.method constructor <init>(Lcom/google/glass/logging/FormattingLogger;Lcom/google/glass/sync/DeviceStateAggregator;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/content/Context;Lcom/google/glass/timeline/AttachmentUploader;Lcom/google/glass/sync/AttachmentManager;Lcom/google/glass/util/SettingsSecure;)V
    .locals 2
    .param p1, "parentLogger"    # Lcom/google/glass/logging/FormattingLogger;
    .param p2, "aggregator"    # Lcom/google/glass/sync/DeviceStateAggregator;
    .param p3, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "attachmentUploader"    # Lcom/google/glass/timeline/AttachmentUploader;
    .param p6, "attachmentManager"    # Lcom/google/glass/sync/AttachmentManager;
    .param p7, "settingsSecure"    # Lcom/google/glass/util/SettingsSecure;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/sync/UploadTask;-><init>(Lcom/google/glass/logging/FormattingLogger;Lcom/google/glass/sync/DeviceStateAggregator;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 112
    iput-object p4, p0, Lcom/google/glass/sync/TimelineUploadTask;->context:Landroid/content/Context;

    .line 113
    iput-object p5, p0, Lcom/google/glass/sync/TimelineUploadTask;->attachmentUploader:Lcom/google/glass/timeline/AttachmentUploader;

    .line 115
    if-eqz p6, :cond_0

    .line 116
    iput-object p6, p0, Lcom/google/glass/sync/TimelineUploadTask;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    .line 121
    :goto_0
    if-eqz p7, :cond_1

    .line 122
    iput-object p7, p0, Lcom/google/glass/sync/TimelineUploadTask;->settingsSecure:Lcom/google/glass/util/SettingsSecure;

    .line 126
    :goto_1
    return-void

    .line 118
    :cond_0
    new-instance v0, Lcom/google/glass/sync/AttachmentManager;

    invoke-direct {v0, p4}, Lcom/google/glass/sync/AttachmentManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/sync/TimelineUploadTask;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    goto :goto_0

    .line 124
    :cond_1
    new-instance v0, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/glass/sync/TimelineUploadTask;->settingsSecure:Lcom/google/glass/util/SettingsSecure;

    goto :goto_1
.end method

.method private createUpstreamSyncRequest(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;
    .locals 7
    .param p1, "baseItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "requestItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p3, "pendingActions"    # Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 491
    new-instance v2, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;-><init>()V

    .line 492
    .local v2, "request":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;
    iget-object v3, p0, Lcom/google/glass/sync/TimelineUploadTask;->settingsSecure:Lcom/google/glass/util/SettingsSecure;

    const-string v4, "android_id"

    invoke-virtual {v3, v4}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->deviceId:Ljava/lang/String;

    .line 494
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsDeleted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 496
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;-><init>()V

    .line 497
    .local v0, "delete":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->setTimelineItemId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    .line 498
    iget-object v3, p3, Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;->actions:Ljava/util/List;

    new-array v4, v6, [Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    iput-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 499
    new-array v3, v5, [Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    aput-object v0, v3, v6

    iput-object v3, v2, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    .line 507
    .end local v0    # "delete":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;
    :goto_0
    iget-object v3, p0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Generated sync request [request=%s]."

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    return-object v2

    .line 501
    :cond_0
    new-instance v1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;-><init>()V

    .line 502
    .local v1, "iroc":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;
    invoke-virtual {v1, p2}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    .line 503
    iget-object v3, p3, Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;->actions:Ljava/util/List;

    new-array v4, v6, [Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    iput-object v3, v1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 504
    new-array v3, v5, [Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    aput-object v1, v3, v6

    iput-object v3, v2, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    goto :goto_0
.end method

.method private getAttachmentIdIfAlreadyUploaded(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/lang/String;
    .locals 9
    .param p1, "attachment"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 571
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, "attachmentId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 574
    invoke-static {v0}, Lcom/google/glass/sync/LocalIdGenerator;->isId(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 575
    iget-object v2, p0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Attachment has local ID -- checking tracker for previous upload. [timelineId=%s, attachmentId=%s]."

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 576
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 575
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    iget-object v2, p0, Lcom/google/glass/sync/TimelineUploadTask;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    invoke-virtual {v2, v0}, Lcom/google/glass/sync/AttachmentManager;->getIdMappingForPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, "uploadedId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 580
    iget-object v2, p0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Attachment previously uploaded. Skipping. [timelineId=%s, attachmentId=%s]."

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 581
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 580
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 623
    .end local v1    # "uploadedId":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 583
    .restart local v1    # "uploadedId":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Attachment not previously uploaded. Will upload. [timelineId=%s, attachmentId=%s]."

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 584
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    .line 583
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 589
    .end local v1    # "uploadedId":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Attachment previously uploaded. Skipping. [timelineId=%s, attachmentId=%s]."

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 590
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 589
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    .line 591
    goto :goto_0

    .line 595
    :cond_2
    iget-object v2, p0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Attachment does not have an ID in the protobuf -- checking upload tracker for a previous upload [timelineId=%s]."

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 596
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 595
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 602
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 603
    iget-object v2, p0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Attachment has no client cache path or ID. This attachment will not be uploaded [timelineId=%s]."

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 604
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 603
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 608
    :cond_3
    iget-object v2, p0, Lcom/google/glass/sync/TimelineUploadTask;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/sync/AttachmentManager;->getIdMappingForPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 610
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 611
    iget-object v2, p0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Attachment ID not present in upload tracker, will upload [timelineId=%s]."

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 612
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 611
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 620
    :cond_4
    iget-object v2, p0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Attachment ID present in upload tracker, but not present in protobuf. Will set [timelineId=%s, attachmentId=%s]."

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 621
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    .line 620
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    .line 623
    goto/16 :goto_0
.end method

.method private getModificationTimeOfAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;I)J
    .locals 7
    .param p1, "attachment"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .param p2, "attachmentIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 544
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/sync/LocalIdGenerator;->isId(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 548
    iget-object v2, p0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Local ID available for the attachment -- getting modification time via attachment manager [timelineId=%s, attachmentIdx=%d]."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 549
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 548
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    iget-object v2, p0, Lcom/google/glass/sync/TimelineUploadTask;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/sync/AttachmentManager;->getLastModifiedMillis(Ljava/lang/String;)J

    move-result-wide v0

    .line 553
    .local v0, "lastModifiedMillis":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 554
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "Could not find attachment in AttachmentManager! BUG!"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 560
    .end local v0    # "lastModifiedMillis":J
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    :cond_1
    return-wide v0
.end method

.method private isUploadableAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;I)Z
    .locals 6
    .param p1, "attachment"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .param p2, "attachmentIdx"    # I

    .prologue
    const/4 v0, 0x0

    .line 438
    const-string v1, "/sdcard/btsnoop_hci.log"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    :goto_0
    return v0

    .line 449
    :cond_0
    const-string v1, "video/mp4"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 450
    invoke-static {p1}, Lcom/google/glass/timeline/AttachmentHelper;->isPhotosServiceAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 451
    iget-object v1, p0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Skipping upload for glassware video [timelineId=%s, attachmentIdx=%d]."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 452
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 451
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 456
    :cond_1
    sget-object v0, Lcom/google/glass/sync/TimelineUploadTask;->UPLOADABLE_CONTENT_TYPES:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private openAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;I)Ljava/io/FileInputStream;
    .locals 6
    .param p1, "attachment"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .param p2, "attachmentIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 523
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/sync/LocalIdGenerator;->isId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    iget-object v1, p0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Local ID available for the attachment -- opening attachment via attachment manager [timelineId=%s, attachmentIdx=%d]."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 528
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 527
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 530
    iget-object v1, p0, Lcom/google/glass/sync/TimelineUploadTask;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/sync/AttachmentManager;->openAttachment(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 532
    .local v0, "inputStream":Ljava/io/FileInputStream;
    if-nez v0, :cond_1

    .line 533
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "Could not find attachment in AttachmentManager! BUG!"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 539
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :cond_1
    return-object v0
.end method

.method private uploadAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;I)Lcom/google/glass/sync/UploadResult;
    .locals 13
    .param p1, "attachment"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .param p2, "attachmentIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;",
            "I)",
            "Lcom/google/glass/sync/UploadResult",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;,
            Lorg/apache/http/auth/InvalidCredentialsException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-direct {p0, p1, p2}, Lcom/google/glass/sync/TimelineUploadTask;->isUploadableAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Attachment not uploadable -- skipping [timelineId=%s, attachmentIdx=%d]."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v12, p0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 337
    invoke-virtual {v12}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v5

    .line 336
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    new-instance v0, Lcom/google/glass/sync/UploadResult$Builder;

    invoke-direct {v0}, Lcom/google/glass/sync/UploadResult$Builder;-><init>()V

    .line 340
    invoke-virtual {v0, p1}, Lcom/google/glass/sync/UploadResult$Builder;->withUpdatedItem(Ljava/lang/Object;)Lcom/google/glass/sync/UploadResult$Builder;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Lcom/google/glass/sync/UploadResult$Builder;->build()Lcom/google/glass/sync/UploadResult;

    move-result-object v0

    .line 424
    :goto_0
    return-object v0

    .line 346
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/sync/TimelineUploadTask;->getAttachmentIdIfAlreadyUploaded(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/lang/String;

    move-result-object v7

    .line 348
    .local v7, "attachmentId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 349
    invoke-static {p1}, Lcom/google/glass/timeline/AttachmentHelper;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 350
    .local v11, "updatedAttachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    invoke-virtual {v11, v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 352
    new-instance v0, Lcom/google/glass/sync/UploadResult$Builder;

    invoke-direct {v0}, Lcom/google/glass/sync/UploadResult$Builder;-><init>()V

    .line 353
    invoke-virtual {v0, v11}, Lcom/google/glass/sync/UploadResult$Builder;->withUpdatedItem(Ljava/lang/Object;)Lcom/google/glass/sync/UploadResult$Builder;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Lcom/google/glass/sync/UploadResult$Builder;->build()Lcom/google/glass/sync/UploadResult;

    move-result-object v0

    goto :goto_0

    .line 359
    .end local v11    # "updatedAttachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_1
    const/4 v6, 0x0

    .line 360
    .local v6, "inputStream":Ljava/io/FileInputStream;
    const-wide/16 v8, 0x0

    .line 363
    .local v8, "bytesUploaded":J
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/glass/sync/TimelineUploadTask;->openAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;I)Ljava/io/FileInputStream;

    move-result-object v6

    .line 364
    invoke-direct {p0, p1, p2}, Lcom/google/glass/sync/TimelineUploadTask;->getModificationTimeOfAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;I)J

    move-result-wide v3

    .line 368
    .local v3, "lastModifiedMillis":J
    iget-object v0, p0, Lcom/google/glass/sync/TimelineUploadTask;->attachmentUploader:Lcom/google/glass/timeline/AttachmentUploader;

    .line 369
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/google/glass/sync/TimelineUploadTask;->context:Landroid/content/Context;

    iget-object v12, p0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 370
    invoke-static {v5, v12, p1}, Lcom/google/glass/timeline/AttachmentHelper;->getAttachmentSource(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/lang/String;

    move-result-object v5

    .line 368
    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/AttachmentUploader;->insertAttachmentViaSessionManager(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v7

    .line 373
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    .line 375
    iget-object v0, p0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Upload of attachment complete [timelineId=%s, attachmentIdx=%d, clientCachePath=%s, attachmentId=%s]."

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v12, p0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 376
    invoke-virtual {v12}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v5

    const/4 v5, 0x2

    .line 377
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v5

    const/4 v5, 0x3

    aput-object v7, v2, v5

    .line 375
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    if-eqz v6, :cond_2

    .line 380
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 384
    :cond_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 385
    new-instance v0, Lcom/google/glass/timeline/UploadException;

    sget-object v1, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->INTERNAL_ERROR:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Attachment ID returned was null or empty"

    invoke-direct {v0, v1, v2, v5}, Lcom/google/glass/timeline/UploadException;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 379
    .end local v3    # "lastModifiedMillis":J
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 380
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_3
    throw v0

    .line 389
    .restart local v3    # "lastModifiedMillis":J
    :cond_4
    invoke-static {p1}, Lcom/google/glass/timeline/AttachmentHelper;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 390
    .restart local v11    # "updatedAttachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    invoke-virtual {v11, v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 394
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/sync/LocalIdGenerator;->isId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 396
    iget-object v0, p0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Storing the local ID to updated ID mapping [timelineId=%s, attachmentIdx=%d, localId=%s, updatedId=%s]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v12, p0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 397
    invoke-virtual {v12}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v5

    const/4 v5, 0x3

    .line 398
    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v5

    .line 396
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    iget-object v0, p0, Lcom/google/glass/sync/TimelineUploadTask;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/sync/AttachmentManager;->storePathToIdMapping(Ljava/lang/String;Ljava/lang/String;)Z

    .line 401
    iget-object v0, p0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Telling AttachmentManager that attachment was synced [timelineId=%s, attachmentIdx=%d, localId=%s, attachmentId=%s]."

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v12, p0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 402
    invoke-virtual {v12}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v5

    const/4 v5, 0x2

    .line 403
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v5

    const/4 v5, 0x3

    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v5

    .line 401
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    iget-object v0, p0, Lcom/google/glass/sync/TimelineUploadTask;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v1

    .line 405
    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v2

    .line 404
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/sync/AttachmentManager;->markAsSynced(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 407
    .local v10, "result":Z
    if-nez v10, :cond_5

    .line 408
    iget-object v0, p0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unable to tell AttachmentManager attachment synced [timelineId=%s, attachmentIdx=%d, localId=%s, attachmentId=%s]."

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v12, p0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 409
    invoke-virtual {v12}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v5

    const/4 v5, 0x2

    .line 410
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v5

    const/4 v5, 0x3

    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v5

    .line 408
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    .end local v10    # "result":Z
    :cond_5
    :goto_1
    new-instance v0, Lcom/google/glass/sync/UploadResult$Builder;

    invoke-direct {v0}, Lcom/google/glass/sync/UploadResult$Builder;-><init>()V

    .line 422
    invoke-virtual {v0, v11}, Lcom/google/glass/sync/UploadResult$Builder;->withUpdatedItem(Ljava/lang/Object;)Lcom/google/glass/sync/UploadResult$Builder;

    move-result-object v0

    .line 423
    invoke-virtual {v0, v8, v9}, Lcom/google/glass/sync/UploadResult$Builder;->withBytesUploaded(J)Lcom/google/glass/sync/UploadResult$Builder;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Lcom/google/glass/sync/UploadResult$Builder;->build()Lcom/google/glass/sync/UploadResult;

    move-result-object v0

    goto/16 :goto_0

    .line 414
    :cond_6
    iget-object v0, p0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Storing the client cache path to updated ID mapping [timelineId=%s, attachmentIdx=%d, clientCachePath=%s, updatedId=%s]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v12, p0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 415
    invoke-virtual {v12}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v5

    const/4 v5, 0x2

    .line 416
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v5

    const/4 v5, 0x3

    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v5

    .line 414
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    iget-object v0, p0, Lcom/google/glass/sync/TimelineUploadTask;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v1

    .line 418
    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v2

    .line 417
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/sync/AttachmentManager;->storePathToIdMapping(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private uploadTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/sync/UploadResult;
    .locals 10
    .param p1, "updatedItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ")",
            "Lcom/google/glass/sync/UploadResult",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 461
    invoke-static {}, Lcom/google/glass/timeline/TimelineHelperProvider;->getInstance()Lcom/google/glass/timeline/TimelineHelperProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/timeline/TimelineHelperProvider;->get()Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v4

    .line 462
    .local v4, "timelineHelper":Lcom/google/glass/timeline/TimelineHelper;
    iget-object v6, p0, Lcom/google/glass/sync/TimelineUploadTask;->context:Landroid/content/Context;

    .line 463
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    .line 462
    invoke-virtual {v4, v6, v7}, Lcom/google/glass/timeline/TimelineHelper;->getPendingActions(Landroid/content/Context;Ljava/lang/String;)Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;

    move-result-object v2

    .line 464
    .local v2, "pendingActions":Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;
    iget-object v6, p0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {p0, v6, p1, v2}, Lcom/google/glass/sync/TimelineUploadTask;->createUpstreamSyncRequest(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;

    move-result-object v3

    .line 465
    .local v3, "request":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->getPrimaryDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v0

    .line 467
    .local v0, "dispatcher":Lcom/google/glass/net/ProtoRequestDispatcher;
    sget-object v6, Lcom/google/glass/net/ServerConstants$Action;->TIMELINE_SYNC:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v7, Lcom/google/glass/sync/TimelineUploadTask;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    invoke-virtual {v0, v6, v3, v7}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/protobuf/ProtoParser;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v5

    .line 470
    .local v5, "wrapper":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/google/glass/net/ProtoResponse;->isSuccess()Z

    move-result v6

    if-nez v6, :cond_2

    .line 471
    :cond_0
    if-nez v5, :cond_1

    sget-object v1, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->INTERNAL_ERROR:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    .line 473
    .local v1, "errorCode":Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;
    :goto_0
    new-instance v6, Lcom/google/glass/sync/UploadResult$Builder;

    invoke-direct {v6}, Lcom/google/glass/sync/UploadResult$Builder;-><init>()V

    .line 474
    invoke-virtual {v6, v1}, Lcom/google/glass/sync/UploadResult$Builder;->withErrorCode(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)Lcom/google/glass/sync/UploadResult$Builder;

    move-result-object v6

    .line 475
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->getCachedSize()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Lcom/google/glass/sync/UploadResult$Builder;->withBytesUploaded(J)Lcom/google/glass/sync/UploadResult$Builder;

    move-result-object v6

    .line 476
    invoke-virtual {v6}, Lcom/google/glass/sync/UploadResult$Builder;->build()Lcom/google/glass/sync/UploadResult;

    move-result-object v6

    .line 485
    .end local v1    # "errorCode":Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;
    :goto_1
    return-object v6

    .line 471
    :cond_1
    invoke-virtual {v5}, Lcom/google/glass/net/ProtoResponse;->getErrorCode()Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    move-result-object v1

    goto :goto_0

    .line 480
    :cond_2
    iget-object v6, p0, Lcom/google/glass/sync/TimelineUploadTask;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v2, Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;->maxRowId:J

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/google/glass/timeline/TimelineHelper;->deletePendingActions(Landroid/content/Context;Ljava/lang/String;J)V

    .line 482
    new-instance v6, Lcom/google/glass/sync/UploadResult$Builder;

    invoke-direct {v6}, Lcom/google/glass/sync/UploadResult$Builder;-><init>()V

    .line 483
    invoke-virtual {v5}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/glass/sync/UploadResult$Builder;->withUpdatedItem(Ljava/lang/Object;)Lcom/google/glass/sync/UploadResult$Builder;

    move-result-object v6

    .line 484
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->getCachedSize()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Lcom/google/glass/sync/UploadResult$Builder;->withBytesUploaded(J)Lcom/google/glass/sync/UploadResult$Builder;

    move-result-object v6

    .line 485
    invoke-virtual {v6}, Lcom/google/glass/sync/UploadResult$Builder;->build()Lcom/google/glass/sync/UploadResult;

    move-result-object v6

    goto :goto_1
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 5

    .prologue
    .line 650
    sget-object v0, Lcom/google/glass/sync/TimelineUploadTask;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/sync/TimelineUploadTask;->getTaskId()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x16

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method shouldStreamUpload(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z
    .locals 3
    .param p1, "attachment"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 633
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, "contentType":Ljava/lang/String;
    const/4 v1, 0x1

    .line 640
    .local v1, "shouldStream":Z
    const-string v2, "video/mp4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 641
    invoke-static {p1}, Lcom/google/glass/timeline/AttachmentHelper;->isPhotosServiceAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 642
    const/4 v1, 0x0

    .line 645
    :cond_0
    return v1
.end method

.method protected upload()Lcom/google/glass/sync/UploadResult;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/glass/sync/UploadResult",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v23, v0

    const-string v24, "TimelineUploadTask starting."

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-interface/range {v23 .. v25}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    new-instance v23, Lcom/google/glass/time/Stopwatch;

    invoke-direct/range {v23 .. v23}, Lcom/google/glass/time/Stopwatch;-><init>()V

    invoke-virtual/range {v23 .. v23}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    move-result-object v19

    .line 132
    .local v19, "stopwatch":Lcom/google/glass/time/Stopwatch;
    const-wide/16 v8, 0x0

    .line 134
    .local v8, "bytesUploaded":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v20

    .line 135
    .local v20, "syncedItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    sget-object v23, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 137
    invoke-static {}, Lcom/google/glass/sync/UploadResult;->newBuilder()Lcom/google/glass/sync/UploadResult$Builder;

    move-result-object v18

    .line 138
    .local v18, "resultBuilder":Lcom/google/glass/sync/UploadResult$Builder;, "Lcom/google/glass/sync/UploadResult$Builder<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v7

    .line 139
    .local v7, "attachmentsToUpload":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v22

    .line 141
    .local v22, "uploadedAttachments":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    const/16 v23, 0x0

    :goto_0
    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    aget-object v4, v24, v23

    .line 142
    .local v4, "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    invoke-virtual {v7, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 145
    .end local v4    # "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v23, v0

    const-string v24, "Preparing to upload attachments [timelineId=%s, numAttachments=%s]."

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    .line 146
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    .line 145
    invoke-interface/range {v23 .. v25}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    const/4 v5, 0x0

    .line 150
    .local v5, "attachmentIdx":I
    const/4 v3, 0x1

    .line 151
    .local v3, "allAttachmentsUploaded":Z
    const/16 v16, 0x0

    .line 153
    .local v16, "permanentFailure":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/glass/sync/AttachmentManager;->connect()Z

    .line 163
    :goto_1
    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_2

    .line 164
    invoke-virtual {v7}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 167
    .local v6, "attachmentInProgress":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v23, v0

    const-string v24, "Uploading attachment [timelineId=%s, attachmentIdx=%d]"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    .line 168
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    .line 167
    invoke-interface/range {v23 .. v25}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/google/glass/sync/TimelineUploadTask;->uploadAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;I)Lcom/google/glass/sync/UploadResult;

    move-result-object v17

    .line 174
    .local v17, "result":Lcom/google/glass/sync/UploadResult;, "Lcom/google/glass/sync/UploadResult<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    invoke-virtual/range {v17 .. v17}, Lcom/google/glass/sync/UploadResult;->hasPrdErrorCodes()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v23, v0

    const-string v24, "Had problems uploading attachment [prdErrorCodes=(%s)]."

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    .line 176
    invoke-virtual/range {v17 .. v17}, Lcom/google/glass/sync/UploadResult;->getPrdErrorCodesAsString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    .line 175
    invoke-interface/range {v23 .. v25}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/glass/sync/UploadResult;->prdErrorCodes:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/glass/sync/UploadResult$Builder;->withErrorCodes(Ljava/util/List;)Lcom/google/glass/sync/UploadResult$Builder;

    .line 183
    :goto_2
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/glass/sync/UploadResult;->updatedItem:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-object v6, v0

    .line 184
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/google/glass/sync/UploadResult;->bytesUploaded:J

    move-wide/from16 v23, v0
    :try_end_1
    .catch Lorg/apache/http/ConnectionClosedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/http/auth/InvalidCredentialsException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/google/glass/timeline/UploadException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long v8, v8, v23

    .line 255
    :try_start_2
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 256
    add-int/lit8 v5, v5, 0x1

    .line 257
    goto/16 :goto_1

    .line 179
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v23, v0

    const-string v24, "Upload of attachment successful [timelineId=%s, attachmentIdx=%d]"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-object/from16 v27, v0

    .line 180
    invoke-virtual/range {v27 .. v27}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    .line 179
    invoke-interface/range {v23 .. v25}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/apache/http/ConnectionClosedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/apache/http/auth/InvalidCredentialsException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lcom/google/glass/timeline/UploadException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 185
    .end local v17    # "result":Lcom/google/glass/sync/UploadResult;, "Lcom/google/glass/sync/UploadResult<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    :catch_0
    move-exception v10

    .line 186
    .local v10, "e":Lorg/apache/http/ConnectionClosedException;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v23, v0

    const-string v24, "Caught a ConnectionClosedException -- requesting sync halt [timelineId=%s, attachmentIdx=%d, clientCachePath=%s, message=%s]."

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-object/from16 v27, v0

    .line 187
    invoke-virtual/range {v27 .. v27}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    .line 188
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x3

    invoke-virtual {v10}, Lorg/apache/http/ConnectionClosedException;->getMessage()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    .line 186
    invoke-interface/range {v23 .. v25}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/sync/UploadResult$Builder;->andHalt()Lcom/google/glass/sync/UploadResult$Builder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 190
    const/4 v3, 0x0

    .line 255
    :try_start_5
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v5, v5, 0x1

    .line 260
    .end local v6    # "attachmentInProgress":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v10    # "e":Lorg/apache/http/ConnectionClosedException;
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v23, v0

    const-string v24, "Attachment phase complete [timelineId=%s, allAttachmentsUploaded=%s, permanentFailure=%s]"

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-object/from16 v27, v0

    .line 261
    invoke-virtual/range {v27 .. v27}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    aput-object v27, v25, v26

    .line 260
    invoke-interface/range {v23 .. v25}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedList;->size()I

    move-result v24

    add-int v23, v23, v24

    invoke-static/range {v23 .. v23}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v12

    .line 266
    .local v12, "finalAttachmentList":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 267
    invoke-interface {v12, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 268
    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v12, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 270
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v3, v0, :cond_4

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v23, v0

    const-string v24, "Uploading updated timeline item [timelineId=%s]."

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-interface/range {v23 .. v25}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/glass/sync/TimelineUploadTask;->uploadTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/sync/UploadResult;

    move-result-object v21

    .line 277
    .local v21, "timelineItemResult":Lcom/google/glass/sync/UploadResult;, "Lcom/google/glass/sync/UploadResult<Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;>;"
    invoke-virtual/range {v21 .. v21}, Lcom/google/glass/sync/UploadResult;->hasPrdErrorCodes()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v23, v0

    const-string v24, "Had problems uploading timeline item [prdErrorCodes=(%s)]."

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    .line 279
    invoke-virtual/range {v21 .. v21}, Lcom/google/glass/sync/UploadResult;->getPrdErrorCodesAsString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    .line 278
    invoke-interface/range {v23 .. v25}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 281
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/glass/sync/UploadResult;->prdErrorCodes:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/glass/sync/UploadResult$Builder;->withErrorCodes(Ljava/util/List;)Lcom/google/glass/sync/UploadResult$Builder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 318
    .end local v21    # "timelineItemResult":Lcom/google/glass/sync/UploadResult;, "Lcom/google/glass/sync/UploadResult<Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;>;"
    :goto_4
    invoke-virtual/range {v19 .. v19}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 321
    invoke-virtual/range {v19 .. v19}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v23

    move-object/from16 v0, v18

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/sync/UploadResult$Builder;->withTimeTaken(J)Lcom/google/glass/sync/UploadResult$Builder;

    move-result-object v23

    .line 322
    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v9}, Lcom/google/glass/sync/UploadResult$Builder;->withBytesUploaded(J)Lcom/google/glass/sync/UploadResult$Builder;

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/glass/sync/AttachmentManager;->close()Z

    .line 327
    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/sync/UploadResult$Builder;->build()Lcom/google/glass/sync/UploadResult;

    move-result-object v13

    .line 328
    .local v13, "finalResult":Lcom/google/glass/sync/UploadResult;, "Lcom/google/glass/sync/UploadResult<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v23, v0

    const-string v24, "Returning from upload [timelineId=%s, result=%s]."

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    aput-object v13, v25, v26

    invoke-interface/range {v23 .. v25}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    return-object v13

    .line 192
    .end local v12    # "finalAttachmentList":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    .end local v13    # "finalResult":Lcom/google/glass/sync/UploadResult;, "Lcom/google/glass/sync/UploadResult<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    .restart local v6    # "attachmentInProgress":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :catch_1
    move-exception v10

    .line 193
    .local v10, "e":Ljava/net/SocketTimeoutException;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v23, v0

    const-string v24, "Caught a SocketTimeoutException -- requesting sync halt [timelineId=%s, attachmentIdx=%d, clientCachePath=%s, message=%s]."

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-object/from16 v27, v0

    .line 194
    invoke-virtual/range {v27 .. v27}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    .line 195
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x3

    invoke-virtual {v10}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    .line 193
    invoke-interface/range {v23 .. v25}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/sync/UploadResult$Builder;->andHalt()Lcom/google/glass/sync/UploadResult$Builder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 197
    const/4 v3, 0x0

    .line 255
    :try_start_7
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 256
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 199
    .end local v10    # "e":Ljava/net/SocketTimeoutException;
    :catch_2
    move-exception v10

    .line 200
    .local v10, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v23, v0

    const-string v24, "Caught a ConnectTimeoutException -- requesting sync halt [timelineId=%s, attachmentIdx=%d, clientCachePath=%s, message=%s]."

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-object/from16 v27, v0

    .line 201
    invoke-virtual/range {v27 .. v27}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    .line 202
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x3

    invoke-virtual {v10}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    .line 200
    invoke-interface/range {v23 .. v25}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/sync/UploadResult$Builder;->andHalt()Lcom/google/glass/sync/UploadResult$Builder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 204
    const/4 v3, 0x0

    .line 255
    :try_start_9
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 256
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 206
    .end local v10    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :catch_3
    move-exception v10

    .line 209
    .local v10, "e":Lorg/apache/http/auth/InvalidCredentialsException;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v23, v0

    const-string v24, "Caught an InvalidCredentialsException -- requesting sync halt [timelineId=%s, attachmentIdx=%d, clientCachePath=%s, message=%s]."

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-object/from16 v27, v0

    .line 210
    invoke-virtual/range {v27 .. v27}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    .line 211
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x3

    invoke-virtual {v10}, Lorg/apache/http/auth/InvalidCredentialsException;->getMessage()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    .line 209
    invoke-interface/range {v23 .. v25}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/sync/UploadResult$Builder;->andHalt()Lcom/google/glass/sync/UploadResult$Builder;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 213
    const/4 v3, 0x0

    .line 255
    :try_start_b
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 256
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 215
    .end local v10    # "e":Lorg/apache/http/auth/InvalidCredentialsException;
    :catch_4
    move-exception v10

    .line 216
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v23, v0

    const-string v24, "Ran into an issue communicating with the AttachmentManager -- not uploading the rest of the timeline item. [timelineId=%s, attachmentIdx=%d, clientCachePath=%s, message=%s]."

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-object/from16 v27, v0

    .line 218
    invoke-virtual/range {v27 .. v27}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    .line 219
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x3

    invoke-virtual {v10}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    .line 216
    invoke-interface/range {v23 .. v25}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 220
    const/4 v3, 0x0

    .line 255
    :try_start_d
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 256
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 222
    .end local v10    # "e":Landroid/os/RemoteException;
    :catch_5
    move-exception v10

    .line 223
    .local v10, "e":Ljava/io/FileNotFoundException;
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v23, v0

    const-string v24, "Couldn\'t find attachment file for reading -- will mark item as SYNC_FAILED_PERMANENTLY to prevent further attempts [timelineId=%s, attachmentIdx=%d, clientCachePath=%s, message=%s]"

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-object/from16 v27, v0

    .line 225
    invoke-virtual/range {v27 .. v27}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    .line 226
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x3

    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    .line 223
    invoke-interface/range {v23 .. v25}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 231
    const/4 v3, 0x0

    .line 232
    const/16 v16, 0x1

    .line 255
    :try_start_f
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 256
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 234
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v10

    .line 235
    .local v10, "e":Lcom/google/glass/timeline/UploadException;
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v23, v0

    const-string v24, "Failed to upload attachment -- server side responded inappropriately [timelineId=%s, attachmentIdx=%d, clientCachePath=%s, message=%s, errorCode=%s]."

    const/16 v25, 0x5

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-object/from16 v27, v0

    .line 237
    invoke-virtual/range {v27 .. v27}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x3

    .line 238
    invoke-virtual {v10}, Lcom/google/glass/timeline/UploadException;->getMessage()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x4

    invoke-virtual {v10}, Lcom/google/glass/timeline/UploadException;->getErrorCode()Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    move-result-object v27

    aput-object v27, v25, v26

    .line 235
    invoke-interface/range {v23 .. v25}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    invoke-virtual {v10}, Lcom/google/glass/timeline/UploadException;->getErrorCode()Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/glass/sync/UploadResult$Builder;->withErrorCode(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)Lcom/google/glass/sync/UploadResult$Builder;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 240
    const/4 v3, 0x0

    .line 255
    :try_start_11
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 256
    add-int/lit8 v5, v5, 0x1

    .line 257
    goto/16 :goto_1

    .line 241
    .end local v10    # "e":Lcom/google/glass/timeline/UploadException;
    :catch_7
    move-exception v10

    .line 242
    .local v10, "e":Ljava/io/IOException;
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v23, v0

    const-string v24, "Network or disk I/O Exception occurred during upload of attachment [timelineId=%s, attachmentIdx=%d, clientCachePath=%s, message=%s]."

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-object/from16 v27, v0

    .line 243
    invoke-virtual/range {v27 .. v27}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    .line 244
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x3

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    .line 242
    invoke-interface/range {v23 .. v25}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 245
    const/4 v3, 0x0

    .line 255
    :try_start_13
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v5, v5, 0x1

    .line 257
    goto/16 :goto_1

    .line 255
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v5, v5, 0x1

    throw v23
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 318
    .end local v6    # "attachmentInProgress":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :catchall_1
    move-exception v23

    invoke-virtual/range {v19 .. v19}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 321
    invoke-virtual/range {v19 .. v19}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v24

    move-object/from16 v0, v18

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/sync/UploadResult$Builder;->withTimeTaken(J)Lcom/google/glass/sync/UploadResult$Builder;

    move-result-object v24

    .line 322
    move-object/from16 v0, v24

    invoke-virtual {v0, v8, v9}, Lcom/google/glass/sync/UploadResult$Builder;->withBytesUploaded(J)Lcom/google/glass/sync/UploadResult$Builder;

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/glass/sync/AttachmentManager;->close()Z

    throw v23

    .line 285
    .restart local v12    # "finalAttachmentList":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    .restart local v21    # "timelineItemResult":Lcom/google/glass/sync/UploadResult;, "Lcom/google/glass/sync/UploadResult<Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;>;"
    :cond_3
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v23, v0

    const-string v24, "All attachments uploaded and timeline item was uploaded, marking as SYNCED [timelineItemId=%s]."

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-object/from16 v27, v0

    .line 286
    invoke-virtual/range {v27 .. v27}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    .line 285
    invoke-interface/range {v23 .. v25}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    const/16 v23, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 288
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/glass/sync/UploadResult$Builder;->withUpdatedItem(Ljava/lang/Object;)Lcom/google/glass/sync/UploadResult$Builder;

    goto/16 :goto_4

    .line 291
    .end local v21    # "timelineItemResult":Lcom/google/glass/sync/UploadResult;, "Lcom/google/glass/sync/UploadResult<Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;>;"
    :cond_4
    const/16 v23, 0x1

    move/from16 v0, v16

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v23, v0

    const-string v24, "Permanent failure occurred -- possibly attachment was not found. Marking item as SYNC_FAILED_PERMANENTLY to prevent further attempts [timelineItemId=%s]."

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-object/from16 v27, v0

    .line 295
    invoke-virtual/range {v27 .. v27}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    .line 293
    invoke-interface/range {v23 .. v25}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    new-instance v14, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v14}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    .line 298
    .local v14, "menuItem":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/16 v23, 0x3

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setAction(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 299
    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v15

    .line 300
    .local v15, "menuItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;>;"
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    new-instance v11, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    invoke-direct {v11}, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;-><init>()V

    .line 303
    .local v11, "failedDeliveryInfo":Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->setIsDeliveryFailure(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    .line 305
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setFailedDeliveryInfo(Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 306
    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 307
    const/16 v23, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 309
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/glass/sync/UploadResult$Builder;->withUpdatedItem(Ljava/lang/Object;)Lcom/google/glass/sync/UploadResult$Builder;

    goto/16 :goto_4

    .line 312
    .end local v11    # "failedDeliveryInfo":Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;
    .end local v14    # "menuItem":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .end local v15    # "menuItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v23, v0

    const-string v24, "Non-permanent upload failure occurred -- will re-attempt upload next time [timelineItemId=%s]."

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineUploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-object/from16 v27, v0

    .line 313
    invoke-virtual/range {v27 .. v27}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    .line 312
    invoke-interface/range {v23 .. v25}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto/16 :goto_4
.end method
