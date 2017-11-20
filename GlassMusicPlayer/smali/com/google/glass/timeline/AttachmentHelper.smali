.class public Lcom/google/glass/timeline/AttachmentHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ATTACHMENT_COPY_MARGIN_BYTES:I = 0x400000

.field public static final EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

.field private static final PARSER:Lcom/google/glass/protobuf/ProtoParser;

.field private static final PHOTOS_SERVICE_ID_PREFIX:Ljava/lang/String; = "ps:"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 50
    new-instance v0, Lcom/google/glass/protobuf/ProtoParser;

    new-instance v1, Lcom/google/glass/timeline/AttachmentHelper$1;

    invoke-direct {v1}, Lcom/google/glass/timeline/AttachmentHelper$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/protobuf/ProtoParser;-><init>(Lcom/google/glass/protobuf/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/timeline/AttachmentHelper;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    .line 63
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    sput-object v0, Lcom/google/glass/timeline/AttachmentHelper;->EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/google/glass/timeline/AttachmentHelper;->context:Landroid/content/Context;

    .line 78
    return-void
.end method

.method private static attachmentCreatedOnDevice(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 431
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

.method public static clone(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 4

    .prologue
    .line 505
    if-eqz p0, :cond_0

    .line 507
    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 515
    :goto_0
    return-object v0

    .line 508
    :catch_0
    move-exception v0

    .line 511
    sget-object v1, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Couldn\'t clone attachment"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Couldn\'t clone attachment"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAttachmentSource(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    invoke-static {p2}, Lcom/google/glass/timeline/AttachmentHelper;->isPhotosServiceAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemCreationHelper;

    move-result-object v0

    .line 497
    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->getLocalTimelineItemSource()Ljava/lang/String;

    move-result-object v0

    .line 499
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getFileForAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/glass/util/CachedFilesManager;)Ljava/io/File;
    .locals 2

    .prologue
    .line 312
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 314
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->hasClientCachePath()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-object v0

    .line 321
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    sget-object v0, Lcom/google/glass/util/FileType;->ATTACHMENT:Lcom/google/glass/util/FileType;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 323
    if-eqz v1, :cond_2

    .line 324
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLocallyManagedAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z
    .locals 1

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    const/4 v0, 0x0

    .line 465
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/sync/LocalIdGenerator;->isId(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isPhotosServiceAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 440
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ps:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 453
    :cond_0
    :goto_0
    return v0

    .line 447
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 448
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/glass/camera/CameraConstants;->DCIM_DIRECTORY_RELATIVE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/timeline/AttachmentHelper;->attachmentCreatedOnDevice(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 453
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mergeAttachments(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 348
    new-instance v4, Ljava/util/ArrayList;

    .line 349
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v3

    .line 350
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 351
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 352
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 356
    sget-object v5, Lcom/google/glass/timeline/AttachmentHelper;->EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-eq v0, v5, :cond_0

    sget-object v5, Lcom/google/glass/timeline/AttachmentHelper;->EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-ne v1, v5, :cond_1

    .line 350
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 359
    :cond_1
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->hasId()Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_2
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2

    .line 361
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 362
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 367
    :cond_4
    :goto_3
    sget-object v0, Lcom/google/glass/timeline/AttachmentHelper;->EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 368
    sget-object v0, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Removed one instance of an empty attachment."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 363
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 364
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 370
    :cond_6
    return-object v4
.end method

.method private static mutateAttachmentRefcounts(Landroid/content/Context;ILjava/util/List;)V
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 265
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 266
    if-nez p1, :cond_0

    :goto_0
    const-string v2, "Difference must be non-zero."

    invoke-static {v0, v2}, Lcom/google/glass/predicates/Assert;->assertFalse(ZLjava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/google/glass/sync/AttachmentManager$Provider;->getInstance()Lcom/google/glass/sync/AttachmentManager$Provider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/sync/AttachmentManager$Provider;->get(Landroid/content/Context;)Lcom/google/glass/sync/AttachmentManager;

    move-result-object v3

    .line 269
    const/4 v2, 0x0

    .line 272
    :try_start_0
    invoke-virtual {v3}, Lcom/google/glass/sync/AttachmentManager;->connect()Z

    move-result v0

    .line 274
    if-nez v0, :cond_1

    .line 275
    sget-object v0, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unable to connect to attachment manager."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    invoke-virtual {v3}, Lcom/google/glass/sync/AttachmentManager;->close()Z

    .line 304
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 266
    goto :goto_0

    :cond_1
    move v8, v1

    move-object v1, v2

    move v2, v8

    .line 279
    :goto_2
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 280
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    :try_start_2
    invoke-static {v0}, Lcom/google/glass/timeline/AttachmentHelper;->isLocallyManagedAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 285
    sget-object v1, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Mutating refcount for UATS attachment [attachmentIdx=%d, attachmentId=%s, difference=%d]."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 286
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 285
    invoke-interface {v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    if-lez p1, :cond_2

    .line 289
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/glass/sync/AttachmentManager;->incrementRefcount(Ljava/lang/String;)Z

    .line 279
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_2

    .line 291
    :cond_2
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/glass/sync/AttachmentManager;->decrementRefcount(Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 298
    :catch_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 299
    :goto_4
    :try_start_3
    sget-object v2, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Failed to mutate refcount due to RemoteException [attachmentId=%s, getMessage=%s]."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 300
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 299
    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 302
    invoke-virtual {v3}, Lcom/google/glass/sync/AttachmentManager;->close()Z

    goto :goto_1

    .line 294
    :cond_3
    :try_start_4
    sget-object v1, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Skipping refcount mutation for non-UATS attachment [attachmentIdx=%d, attachmentId=%s, difference=%d]"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 295
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 294
    invoke-interface {v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 302
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Lcom/google/glass/sync/AttachmentManager;->close()Z

    throw v0

    :cond_4
    invoke-virtual {v3}, Lcom/google/glass/sync/AttachmentManager;->close()Z

    goto/16 :goto_1

    .line 298
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_4
.end method

.method public static shouldDeleteLocalAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z
    .locals 2

    .prologue
    .line 479
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/glass/camera/CameraConstants;->DCIM_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cloneAttachments(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 16

    .prologue
    .line 168
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 170
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v1}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    const/4 v1, 0x1

    .line 248
    :goto_0
    return v1

    .line 174
    :cond_0
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v5

    .line 177
    const/4 v4, 0x0

    .line 178
    const-wide/16 v2, 0x0

    .line 179
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v7, v6

    const/4 v1, 0x0

    move v13, v1

    move-wide v14, v2

    move-wide v1, v14

    move v3, v4

    move v4, v13

    :goto_1
    if-ge v4, v7, :cond_2

    aget-object v8, v6, v4

    .line 180
    invoke-static {v8}, Lcom/google/glass/timeline/AttachmentHelper;->isPhotosServiceAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 181
    invoke-static {v8, v5}, Lcom/google/glass/timeline/AttachmentHelper;->getFileForAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/glass/util/CachedFilesManager;)Ljava/io/File;

    move-result-object v8

    .line 182
    if-eqz v8, :cond_1

    .line 183
    add-int/lit8 v3, v3, 0x1

    .line 184
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v1, v8

    .line 179
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 189
    :cond_2
    new-instance v4, Lcom/google/glass/util/StorageHelper;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/google/glass/util/StorageHelper;-><init>(Landroid/content/Context;)V

    .line 190
    const-wide/32 v6, 0x400000

    add-long/2addr v6, v1

    .line 191
    invoke-virtual {v4}, Lcom/google/glass/util/StorageHelper;->getAvailableBytesInExternalStorage()J

    move-result-wide v8

    .line 192
    cmp-long v10, v8, v6

    if-gez v10, :cond_3

    .line 193
    sub-long/2addr v6, v8

    .line 194
    sget-object v8, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Trying to trim %s bytes from CachedFilesManager"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    invoke-virtual {v5, v6, v7}, Lcom/google/glass/util/CachedFilesManager;->trimBySize(J)Z

    move-result v6

    if-nez v6, :cond_3

    .line 196
    sget-object v3, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Insufficient space to copy %s bytes of attachments for item %s, Free bytes: %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 197
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x2

    invoke-virtual {v4}, Lcom/google/glass/util/StorageHelper;->getAvailableBytesInExternalStorage()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v1

    .line 196
    invoke-interface {v3, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    invoke-virtual {v4}, Lcom/google/glass/util/StorageHelper;->showFullStorageDialog()V

    .line 199
    const/4 v1, 0x0

    goto :goto_0

    .line 204
    :cond_3
    sget-object v4, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Copying %s attachments, %s bytes for %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v8

    const/4 v3, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v3

    const/4 v1, 0x2

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-interface {v4, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 209
    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 211
    const/4 v1, 0x0

    move v2, v1

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_8

    .line 212
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 214
    invoke-static {v1}, Lcom/google/glass/timeline/AttachmentHelper;->isPhotosServiceAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 215
    sget-object v7, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Not copying photo service attachment [attachmentId=%s]."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 216
    :cond_4
    invoke-static {v1}, Lcom/google/glass/timeline/AttachmentHelper;->isLocallyManagedAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 217
    sget-object v7, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Not copying locally managed attachment [attachmentId=%s]."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 219
    :cond_5
    invoke-static {v1, v5}, Lcom/google/glass/timeline/AttachmentHelper;->getFileForAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/glass/util/CachedFilesManager;)Ljava/io/File;

    move-result-object v7

    .line 221
    if-eqz v7, :cond_7

    .line 223
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0xc

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 225
    sget-object v9, Lcom/google/glass/util/FileType;->SHARE:Lcom/google/glass/util/FileType;

    invoke-static {v7}, Lcom/google/glass/util/FileSaver;->newSaver(Ljava/io/File;)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v7

    invoke-virtual {v5, v9, v8, v7}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/FileType;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 226
    sget-object v7, Lcom/google/glass/util/FileType;->SHARE:Lcom/google/glass/util/FileType;

    invoke-virtual {v5, v7, v8}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 227
    invoke-virtual {v1, v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 229
    sget-object v7, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Clearing attachment ID to force re-upload for non-UATS managed attachment."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clearId()Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    goto :goto_3

    .line 232
    :cond_6
    sget-object v7, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Failed to copy attachment %s on %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v10

    const/4 v1, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    add-int/lit8 v1, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_4
    move v2, v1

    goto/16 :goto_3

    .line 236
    :cond_7
    sget-object v7, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Could not find attachment %s on %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v10

    const/4 v1, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    add-int/lit8 v1, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 244
    :cond_8
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v1, v6}, Lcom/google/glass/timeline/AttachmentHelper;->mutateAttachmentRefcounts(Landroid/content/Context;ILjava/util/List;)V

    .line 246
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-interface {v6, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-object/from16 v0, p2

    iput-object v1, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 247
    sget-object v1, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Copied attachments in %s ms"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v3, v7, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-interface {v1, v2, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public deleteAttachments(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 8

    .prologue
    .line 134
    new-instance v1, Lcom/google/android/b/a;

    invoke-direct {v1}, Lcom/google/android/b/a;-><init>()V

    .line 135
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 136
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v3

    .line 138
    iget-object v4, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v5, v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_1

    aget-object v6, v4, v0

    .line 139
    invoke-static {v6}, Lcom/google/glass/timeline/AttachmentHelper;->isLocallyManagedAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 140
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    sget-object v7, Lcom/google/glass/util/FileType;->ATTACHMENT:Lcom/google/glass/util/FileType;

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 146
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/glass/util/CachedFilesManager;->deleteFiles(Ljava/util/Set;)V

    .line 152
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 153
    const/4 v0, -0x1

    invoke-static {p1, v0, v2}, Lcom/google/glass/timeline/AttachmentHelper;->mutateAttachmentRefcounts(Landroid/content/Context;ILjava/util/List;)V

    .line 155
    :cond_3
    return-void
.end method

.method public getAttachmentBytes(Ljava/lang/String;Lcom/google/glass/util/FileType;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 387
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 392
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    .line 393
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v0

    .line 418
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 419
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v1

    new-instance v2, Lcom/google/glass/util/CachedFilesManager$ByteArrayLoader;

    invoke-direct {v2}, Lcom/google/glass/util/CachedFilesManager$ByteArrayLoader;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/google/glass/util/CachedFilesManager;->load(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 421
    :goto_1
    return-object v0

    .line 397
    :cond_0
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    .line 398
    invoke-virtual {v0, p2, p1}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/FileType;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 400
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 402
    goto :goto_1

    .line 405
    :cond_1
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/glass/timeline/AttachmentHelper;->getAttachmentFromServer(Ljava/lang/String;)[B

    move-result-object v2

    .line 406
    if-eqz v2, :cond_3

    array-length v3, v2

    if-lez v3, :cond_3

    .line 407
    invoke-static {v2}, Lcom/google/glass/util/FileSaver;->newSaver([B)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v2

    invoke-virtual {v0, p2, p1, v2}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/FileType;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    .line 414
    :cond_2
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 409
    :cond_3
    sget-object v0, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to get attachment from server: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 410
    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 421
    goto :goto_1
.end method

.method public getAttachmentFromServer(Ljava/lang/String;)[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 90
    sget-object v0, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Requesting attachment %s from server."

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    new-instance v2, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;-><init>()V

    .line 94
    invoke-virtual {v2, p1}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->setAttachmentId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;

    .line 96
    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentHelper;->context:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 97
    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 99
    new-instance v3, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;-><init>()V

    .line 101
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->setWidthPixels(I)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    .line 102
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->setHeightPixels(I)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    .line 103
    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->setScreenDimensions(Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/timeline/AttachmentHelper;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v0

    sget-object v3, Lcom/google/glass/net/ServerConstants$Action;->ATTACHMENT_GET:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v4, Lcom/google/glass/timeline/AttachmentHelper;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/protobuf/ProtoParser;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/glass/net/ProtoResponse;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move-object v0, v1

    .line 124
    :goto_0
    return-object v0

    .line 117
    :cond_2
    invoke-virtual {v0}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;

    .line 118
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_3

    .line 119
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->getContent()[B

    move-result-object v0

    .line 120
    sget-object v1, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Successfully get attachment from server: %s, %s bytes."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    .line 121
    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->length([B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 120
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 124
    goto :goto_0
.end method

.method getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 427
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcherPoolSingletonProvider;->getInstance()Lcom/google/glass/net/ProtoRequestDispatcherPoolSingletonProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/net/ProtoRequestDispatcherPoolSingletonProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/ProtoRequestDispatcherPool;

    invoke-virtual {v0}, Lcom/google/glass/net/ProtoRequestDispatcherPool;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v0

    return-object v0
.end method
