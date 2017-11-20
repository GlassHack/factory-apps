.class public Lcom/google/glass/timeline/AttachmentHelper;
.super Ljava/lang/Object;
.source "AttachmentHelper.java"


# static fields
.field private static final ATTACHMENT_COPY_MARGIN_BYTES:I = 0x400000

.field public static final EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/nano/Attachment;

.field private static final PARSER:Lcom/google/glass/protobuf/ProtoParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/protobuf/ProtoParser",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final PHOTOS_SERVICE_ID_PREFIX:Ljava/lang/String; = "ps:"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 48
    new-instance v0, Lcom/google/glass/protobuf/ProtoParser;

    new-instance v1, Lcom/google/glass/timeline/AttachmentHelper$1;

    invoke-direct {v1}, Lcom/google/glass/timeline/AttachmentHelper$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/protobuf/ProtoParser;-><init>(Lcom/google/glass/protobuf/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/timeline/AttachmentHelper;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    .line 61
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/Attachment;-><init>()V

    sput-object v0, Lcom/google/glass/timeline/AttachmentHelper;->EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/nano/Attachment;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/glass/timeline/AttachmentHelper;->context:Landroid/content/Context;

    .line 76
    return-void
.end method

.method private static attachmentCreatedOnDevice(Ljava/lang/String;)Z
    .locals 1
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 429
    if-eqz p0, :cond_0

    const-string v0, "device:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static clone(Lcom/google/googlex/glass/common/proto/nano/Attachment;)Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .locals 4
    .param p0, "original"    # Lcom/google/googlex/glass/common/proto/nano/Attachment;

    .prologue
    .line 503
    if-eqz p0, :cond_0

    .line 505
    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/Attachment;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 513
    :goto_0
    return-object v1

    .line 506
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    sget-object v1, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Couldn\'t clone attachment"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t clone attachment"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 513
    .end local v0    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAttachmentSource(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/googlex/glass/common/proto/nano/Attachment;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p2, "attachment"    # Lcom/google/googlex/glass/common/proto/nano/Attachment;

    .prologue
    .line 492
    invoke-static {p2}, Lcom/google/glass/timeline/AttachmentHelper;->isPhotosServiceAttachment(Lcom/google/googlex/glass/common/proto/nano/Attachment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemCreationHelper;

    move-result-object v0

    .line 495
    .local v0, "timelineItemCreationHelper":Lcom/google/glass/timeline/TimelineItemCreationHelper;
    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->getLocalTimelineItemSource()Ljava/lang/String;

    move-result-object v1

    .line 497
    .end local v0    # "timelineItemCreationHelper":Lcom/google/glass/timeline/TimelineItemCreationHelper;
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getFileForAttachment(Lcom/google/googlex/glass/common/proto/nano/Attachment;Lcom/google/glass/io/CachedFilesManager;)Ljava/io/File;
    .locals 4
    .param p0, "attachment"    # Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .param p1, "cachedFilesManager"    # Lcom/google/glass/io/CachedFilesManager;

    .prologue
    .line 310
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 312
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->hasClientCachePath()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    .line 319
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->hasId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 320
    sget-object v2, Lcom/google/glass/io/FileType;->ATTACHMENT:Lcom/google/glass/io/FileType;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/io/CachedFilesManager;->getPath(Lcom/google/glass/io/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "filename":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 322
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 329
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "filename":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLocallyManagedAttachment(Lcom/google/googlex/glass/common/proto/nano/Attachment;)Z
    .locals 1
    .param p0, "attachment"    # Lcom/google/googlex/glass/common/proto/nano/Attachment;

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    const/4 v0, 0x0

    .line 463
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/sync/LocalIdGenerator;->isId(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isPhotosServiceAttachment(Lcom/google/googlex/glass/common/proto/nano/Attachment;)Z
    .locals 3
    .param p0, "attachment"    # Lcom/google/googlex/glass/common/proto/nano/Attachment;

    .prologue
    const/4 v0, 0x1

    .line 438
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ps:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 451
    :cond_0
    :goto_0
    return v0

    .line 445
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 446
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/glass/camera/CameraConstants;->DCIM_DIRECTORY_RELATIVE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/timeline/AttachmentHelper;->attachmentCreatedOnDevice(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 451
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mergeAttachments(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/Attachment;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/Attachment;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, "attachments1":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/Attachment;>;"
    .local p1, "attachments2":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/Attachment;>;"
    new-instance v3, Ljava/util/ArrayList;

    .line 347
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 348
    .local v3, "mergedAttachments":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/Attachment;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 349
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;

    .line 350
    .local v0, "attachment1":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/nano/Attachment;

    .line 354
    .local v1, "attachment2":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    sget-object v4, Lcom/google/glass/timeline/AttachmentHelper;->EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/nano/Attachment;

    if-eq v0, v4, :cond_0

    sget-object v4, Lcom/google/glass/timeline/AttachmentHelper;->EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/nano/Attachment;

    if-ne v1, v4, :cond_1

    .line 348
    .end local v0    # "attachment1":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 357
    .restart local v0    # "attachment1":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    :cond_1
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->hasId()Z

    move-result v4

    if-eqz v4, :cond_2

    .end local v0    # "attachment1":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    :goto_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .restart local v0    # "attachment1":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    :cond_2
    move-object v0, v1

    goto :goto_2

    .line 359
    .end local v0    # "attachment1":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .end local v1    # "attachment2":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 360
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 365
    :cond_4
    :goto_3
    sget-object v4, Lcom/google/glass/timeline/AttachmentHelper;->EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/nano/Attachment;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 366
    sget-object v4, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Removed one instance of an empty attachment."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 361
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-le v4, v5, :cond_4

    .line 362
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p0, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 368
    :cond_6
    return-object v3
.end method

.method private static mutateAttachmentRefcounts(Landroid/content/Context;ILjava/util/List;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "difference"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/Attachment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p2, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/Attachment;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 263
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 264
    if-nez p1, :cond_0

    :goto_0
    const-string v7, "Difference must be non-zero."

    invoke-static {v6, v7}, Lcom/google/glass/predicates/Assert;->assertFalse(ZLjava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/google/glass/sync/AttachmentManager$Provider;->getInstance()Lcom/google/glass/sync/AttachmentManager$Provider;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/google/glass/sync/AttachmentManager$Provider;->get(Landroid/content/Context;)Lcom/google/glass/sync/AttachmentManager;

    move-result-object v5

    .line 267
    .local v5, "manager":Lcom/google/glass/sync/AttachmentManager;
    const/4 v1, 0x0

    .line 270
    .local v1, "attachment":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    :try_start_0
    invoke-virtual {v5}, Lcom/google/glass/sync/AttachmentManager;->connect()Z

    move-result v2

    .line 272
    .local v2, "connected":Z
    if-nez v2, :cond_1

    .line 273
    sget-object v6, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Unable to connect to attachment manager."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    invoke-virtual {v5}, Lcom/google/glass/sync/AttachmentManager;->close()Z

    .line 302
    .end local v2    # "connected":Z
    :goto_1
    return-void

    .end local v1    # "attachment":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .end local v5    # "manager":Lcom/google/glass/sync/AttachmentManager;
    :cond_0
    move v6, v7

    .line 264
    goto :goto_0

    .line 277
    .restart local v1    # "attachment":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .restart local v2    # "connected":Z
    .restart local v5    # "manager":Lcom/google/glass/sync/AttachmentManager;
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 278
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;

    move-object v1, v0

    .line 282
    invoke-static {v1}, Lcom/google/glass/timeline/AttachmentHelper;->isLocallyManagedAttachment(Lcom/google/googlex/glass/common/proto/nano/Attachment;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 283
    sget-object v6, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Mutating refcount for UATS attachment [attachmentIdx=%d, attachmentId=%s, difference=%d]."

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 284
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 283
    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    if-lez p1, :cond_2

    .line 287
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/glass/sync/AttachmentManager;->incrementRefcount(Ljava/lang/String;)Z

    .line 277
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 289
    :cond_2
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/glass/sync/AttachmentManager;->decrementRefcount(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 296
    .end local v2    # "connected":Z
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 297
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v6, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Failed to mutate refcount due to RemoteException [attachmentId=%s, getMessage=%s]."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 298
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 297
    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 300
    invoke-virtual {v5}, Lcom/google/glass/sync/AttachmentManager;->close()Z

    goto :goto_1

    .line 292
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v2    # "connected":Z
    .restart local v4    # "i":I
    :cond_3
    :try_start_3
    sget-object v6, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Skipping refcount mutation for non-UATS attachment [attachmentIdx=%d, attachmentId=%s, difference=%d]"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 293
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 292
    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 300
    .end local v2    # "connected":Z
    .end local v4    # "i":I
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lcom/google/glass/sync/AttachmentManager;->close()Z

    throw v6

    .restart local v2    # "connected":Z
    .restart local v4    # "i":I
    :cond_4
    invoke-virtual {v5}, Lcom/google/glass/sync/AttachmentManager;->close()Z

    goto/16 :goto_1
.end method

.method public static shouldDeleteLocalAttachment(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/googlex/glass/common/proto/nano/Attachment;)Z
    .locals 2
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p1, "attachment"    # Lcom/google/googlex/glass/common/proto/nano/Attachment;

    .prologue
    .line 477
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/glass/camera/CameraConstants;->DCIM_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 477
    :goto_0
    return v0

    .line 480
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cloneAttachments(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Z
    .locals 30
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 168
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 169
    const/16 v24, 0x1

    .line 246
    :goto_0
    return v24

    .line 172
    :cond_0
    invoke-static {}, Lcom/google/glass/io/CachedFilesManager;->getSharedInstance()Lcom/google/glass/io/CachedFilesManager;

    move-result-object v14

    .line 175
    .local v14, "cachedFilesManager":Lcom/google/glass/io/CachedFilesManager;
    const/16 v19, 0x0

    .line 176
    .local v19, "numToCopy":I
    const-wide/16 v8, 0x0

    .line 177
    .local v8, "bytesRequired":J
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    const/16 v24, 0x0

    :goto_1
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_2

    aget-object v4, v25, v24

    .line 178
    .local v4, "attachment":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    invoke-static {v4}, Lcom/google/glass/timeline/AttachmentHelper;->isPhotosServiceAttachment(Lcom/google/googlex/glass/common/proto/nano/Attachment;)Z

    move-result v27

    if-nez v27, :cond_1

    .line 179
    invoke-static {v4, v14}, Lcom/google/glass/timeline/AttachmentHelper;->getFileForAttachment(Lcom/google/googlex/glass/common/proto/nano/Attachment;Lcom/google/glass/io/CachedFilesManager;)Ljava/io/File;

    move-result-object v15

    .line 180
    .local v15, "file":Ljava/io/File;
    if-eqz v15, :cond_1

    .line 181
    add-int/lit8 v19, v19, 0x1

    .line 182
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v28

    add-long v8, v8, v28

    .line 177
    .end local v15    # "file":Ljava/io/File;
    :cond_1
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 187
    .end local v4    # "attachment":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    :cond_2
    new-instance v21, Lcom/google/glass/util/StorageHelper;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/google/glass/util/StorageHelper;-><init>(Landroid/content/Context;)V

    .line 188
    .local v21, "storageHelper":Lcom/google/glass/util/StorageHelper;
    const-wide/32 v24, 0x400000

    add-long v10, v8, v24

    .line 189
    .local v10, "bytesToReserve":J
    invoke-virtual/range {v21 .. v21}, Lcom/google/glass/util/StorageHelper;->getAvailableBytesInExternalStorage()J

    move-result-wide v6

    .line 190
    .local v6, "bytesFree":J
    cmp-long v24, v6, v10

    if-gez v24, :cond_3

    .line 191
    sub-long v12, v10, v6

    .line 192
    .local v12, "bytesToTrim":J
    sget-object v24, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v25, "Trying to trim %s bytes from CachedFilesManager"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-interface/range {v24 .. v26}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    invoke-virtual {v14, v12, v13}, Lcom/google/glass/io/CachedFilesManager;->trimBySize(J)Z

    move-result v24

    if-nez v24, :cond_3

    .line 194
    sget-object v24, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v25, "Insufficient space to copy %s bytes of attachments for item %s, Free bytes: %s"

    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    .line 195
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x2

    invoke-virtual/range {v21 .. v21}, Lcom/google/glass/util/StorageHelper;->getAvailableBytesInExternalStorage()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    aput-object v28, v26, v27

    .line 194
    invoke-interface/range {v24 .. v26}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    invoke-virtual/range {v21 .. v21}, Lcom/google/glass/util/StorageHelper;->showFullStorageDialog()V

    .line 197
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 202
    .end local v12    # "bytesToTrim":J
    :cond_3
    sget-object v24, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v25, "Copying %s attachments, %s bytes for %s"

    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x2

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-interface/range {v24 .. v26}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    .line 207
    .local v22, "startTime":J
    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 209
    .local v5, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/Attachment;>;"
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_8

    .line 210
    move/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/googlex/glass/common/proto/nano/Attachment;

    .line 212
    .restart local v4    # "attachment":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    invoke-static {v4}, Lcom/google/glass/timeline/AttachmentHelper;->isPhotosServiceAttachment(Lcom/google/googlex/glass/common/proto/nano/Attachment;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 213
    sget-object v24, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v25, "Not copying photo service attachment [attachmentId=%s]."

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getId()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-interface/range {v24 .. v26}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 214
    :cond_4
    invoke-static {v4}, Lcom/google/glass/timeline/AttachmentHelper;->isLocallyManagedAttachment(Lcom/google/googlex/glass/common/proto/nano/Attachment;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 215
    sget-object v24, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v25, "Not copying locally managed attachment [attachmentId=%s]."

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getId()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-interface/range {v24 .. v26}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 217
    :cond_5
    invoke-static {v4, v14}, Lcom/google/glass/timeline/AttachmentHelper;->getFileForAttachment(Lcom/google/googlex/glass/common/proto/nano/Attachment;Lcom/google/glass/io/CachedFilesManager;)Ljava/io/File;

    move-result-object v15

    .line 219
    .restart local v15    # "file":Ljava/io/File;
    if-eqz v15, :cond_7

    .line 221
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    add-int/lit8 v25, v25, 0xc

    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 223
    .local v18, "name":Ljava/lang/String;
    sget-object v24, Lcom/google/glass/io/FileType;->SHARE:Lcom/google/glass/io/FileType;

    invoke-static {v15}, Lcom/google/glass/io/FileSaver;->newSaver(Ljava/io/File;)Lcom/google/glass/io/FileSaver$Saver;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-virtual {v14, v0, v1, v2}, Lcom/google/glass/io/CachedFilesManager;->save(Lcom/google/glass/io/FileType;Ljava/lang/String;Lcom/google/glass/io/FileSaver$Saver;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 224
    sget-object v24, Lcom/google/glass/io/FileType;->SHARE:Lcom/google/glass/io/FileType;

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/google/glass/io/CachedFilesManager;->getPath(Lcom/google/glass/io/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 225
    .local v20, "pathToCopy":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Attachment;

    .line 227
    sget-object v24, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v25, "Clearing attachment ID to force re-upload for non-UATS managed attachment."

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-interface/range {v24 .. v26}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->clearId()Lcom/google/googlex/glass/common/proto/nano/Attachment;

    goto/16 :goto_3

    .line 230
    .end local v20    # "pathToCopy":Ljava/lang/String;
    :cond_6
    sget-object v24, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v25, "Failed to copy attachment %s on %s"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getId()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-interface/range {v24 .. v26}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    add-int/lit8 v17, v16, -0x1

    .end local v16    # "i":I
    .local v17, "i":I
    move/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .end local v18    # "name":Ljava/lang/String;
    :goto_4
    move/from16 v16, v17

    .end local v17    # "i":I
    .restart local v16    # "i":I
    goto/16 :goto_3

    .line 234
    :cond_7
    sget-object v24, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v25, "Could not find attachment %s on %s"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getId()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-interface/range {v24 .. v26}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    add-int/lit8 v17, v16, -0x1

    .end local v16    # "i":I
    .restart local v17    # "i":I
    move/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 242
    .end local v4    # "attachment":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .end local v15    # "file":Ljava/io/File;
    .end local v17    # "i":I
    .restart local v16    # "i":I
    :cond_8
    const/16 v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1, v5}, Lcom/google/glass/timeline/AttachmentHelper;->mutateAttachmentRefcounts(Landroid/content/Context;ILjava/util/List;)V

    .line 244
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/Attachment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [Lcom/google/googlex/glass/common/proto/nano/Attachment;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    .line 245
    sget-object v24, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v25, "Copied attachments in %s ms"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    sub-long v28, v28, v22

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-interface/range {v24 .. v26}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    const/16 v24, 0x1

    goto/16 :goto_0
.end method

.method public deleteAttachments(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v3, Lcom/google/android/util/ArraySet;

    invoke-direct {v3}, Lcom/google/android/util/ArraySet;-><init>()V

    .line 133
    .local v3, "filenames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 134
    .local v1, "attachmentsToDecrement":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/Attachment;>;"
    invoke-static {}, Lcom/google/glass/io/CachedFilesManager;->getSharedInstance()Lcom/google/glass/io/CachedFilesManager;

    move-result-object v2

    .line 136
    .local v2, "cachedFilesManager":Lcom/google/glass/io/CachedFilesManager;
    iget-object v5, p2, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v5, v4

    .line 137
    .local v0, "attachment":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    invoke-static {v0}, Lcom/google/glass/timeline/AttachmentHelper;->isLocallyManagedAttachment(Lcom/google/googlex/glass/common/proto/nano/Attachment;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 138
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 140
    :cond_0
    sget-object v7, Lcom/google/glass/io/FileType;->ATTACHMENT:Lcom/google/glass/io/FileType;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/google/glass/io/CachedFilesManager;->getPath(Lcom/google/glass/io/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 144
    .end local v0    # "attachment":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    :cond_1
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 145
    invoke-static {}, Lcom/google/glass/io/CachedFilesManager;->getSharedInstance()Lcom/google/glass/io/CachedFilesManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/glass/io/CachedFilesManager;->deleteFiles(Ljava/util/Set;)V

    .line 150
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 151
    const/4 v4, -0x1

    invoke-static {p1, v4, v1}, Lcom/google/glass/timeline/AttachmentHelper;->mutateAttachmentRefcounts(Landroid/content/Context;ILjava/util/List;)V

    .line 153
    :cond_3
    return-void
.end method

.method public getAttachmentBytes(Ljava/lang/String;Lcom/google/glass/io/FileType;Lcom/google/googlex/glass/common/proto/nano/Attachment;)[B
    .locals 9
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/google/glass/io/FileType;
    .param p3, "attachment"    # Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 385
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 390
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/io/File;

    .line 391
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 392
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, "filePath":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 417
    invoke-static {}, Lcom/google/glass/io/CachedFilesManager;->getSharedInstance()Lcom/google/glass/io/CachedFilesManager;

    move-result-object v3

    new-instance v4, Lcom/google/glass/io/CachedFilesManager$ByteArrayLoader;

    invoke-direct {v4}, Lcom/google/glass/io/CachedFilesManager$ByteArrayLoader;-><init>()V

    invoke-virtual {v3, v2, v4}, Lcom/google/glass/io/CachedFilesManager;->load(Ljava/lang/String;Lcom/google/glass/io/CachedFilesManager$Loader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 419
    .end local v2    # "filePath":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v3

    .line 395
    :cond_1
    invoke-static {}, Lcom/google/glass/io/CachedFilesManager;->getSharedInstance()Lcom/google/glass/io/CachedFilesManager;

    move-result-object v0

    .line 396
    .local v0, "cachedFilesManager":Lcom/google/glass/io/CachedFilesManager;
    invoke-virtual {v0, p2, p1}, Lcom/google/glass/io/CachedFilesManager;->contains(Lcom/google/glass/io/FileType;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 398
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 403
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/glass/timeline/AttachmentHelper;->getAttachmentFromServer(Ljava/lang/String;)[B

    move-result-object v1

    .line 404
    .local v1, "content":[B
    if-eqz v1, :cond_3

    array-length v4, v1

    if-lez v4, :cond_3

    .line 405
    invoke-static {v1}, Lcom/google/glass/io/FileSaver;->newSaver([B)Lcom/google/glass/io/FileSaver$Saver;

    move-result-object v4

    invoke-virtual {v0, p2, p1, v4}, Lcom/google/glass/io/CachedFilesManager;->save(Lcom/google/glass/io/FileType;Ljava/lang/String;Lcom/google/glass/io/FileSaver$Saver;)Z

    .line 412
    .end local v1    # "content":[B
    :cond_2
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p2, v4}, Lcom/google/glass/io/CachedFilesManager;->getPath(Lcom/google/glass/io/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "filePath":Ljava/lang/String;
    goto :goto_0

    .line 407
    .end local v2    # "filePath":Ljava/lang/String;
    .restart local v1    # "content":[B
    :cond_3
    sget-object v4, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Failed to get attachment from server: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getAttachmentFromServer(Ljava/lang/String;)[B
    .locals 12
    .param p1, "attachmentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 88
    sget-object v7, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Requesting attachment %s from server."

    new-array v9, v11, [Ljava/lang/Object;

    aput-object p1, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    new-instance v3, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;-><init>()V

    .line 92
    .local v3, "request":Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;
    invoke-virtual {v3, p1}, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->setAttachmentId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;

    .line 94
    iget-object v7, p0, Lcom/google/glass/timeline/AttachmentHelper;->context:Landroid/content/Context;

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 95
    .local v6, "windowService":Landroid/view/WindowManager;
    if-eqz v6, :cond_0

    .line 96
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 97
    .local v2, "display":Landroid/view/Display;
    new-instance v1, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;-><init>()V

    .line 99
    .local v1, "dimensions":Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->setWidthPixels(I)Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    .line 100
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->setHeightPixels(I)Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    .line 101
    iput-object v1, v3, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->screenDimensions:Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    .line 105
    .end local v1    # "dimensions":Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;
    .end local v2    # "display":Landroid/view/Display;
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/timeline/AttachmentHelper;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v7

    sget-object v8, Lcom/google/glass/net/ServerConstants$Action;->ATTACHMENT_GET:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v9, Lcom/google/glass/timeline/AttachmentHelper;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    invoke-virtual {v7, v8, v3, v9}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/protobuf/ProtoParser;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v4

    .line 109
    .local v4, "response":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/glass/net/ProtoResponse;->isSuccess()Z

    move-result v7

    if-nez v7, :cond_2

    .line 122
    :cond_1
    :goto_0
    return-object v0

    .line 115
    :cond_2
    invoke-virtual {v4}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v5

    check-cast v5, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;

    .line 116
    .local v5, "responseProto":Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->getResponseCode()I

    move-result v7

    if-nez v7, :cond_1

    .line 117
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->getContent()[B

    move-result-object v0

    .line 118
    .local v0, "content":[B
    sget-object v7, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Successfully get attachment from server: %s, %s bytes."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v10

    .line 119
    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->length([B)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    .line 118
    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 425
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcherPoolSingletonProvider;->getInstance()Lcom/google/glass/net/ProtoRequestDispatcherPoolSingletonProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/net/ProtoRequestDispatcherPoolSingletonProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/ProtoRequestDispatcherPool;

    invoke-virtual {v0}, Lcom/google/glass/net/ProtoRequestDispatcherPool;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v0

    return-object v0
.end method
