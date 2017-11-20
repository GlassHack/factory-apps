.class public abstract Lcom/google/glass/composite/CompositeBuilder;
.super Ljava/lang/Object;
.source "CompositeBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/composite/CompositeBuilder$CompositeReadyCallback;
    }
.end annotation


# static fields
.field private static final COMPOSITE_JPEG_QUALITY:I = 0x5a

.field private static final EXIF_THUMBNAIL_BLOCK_SIZE:I = 0x10

.field private static final EXIF_THUMBNAIL_LONGEST_SIDE:I = 0x140


# instance fields
.field private cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

.field private final context:Landroid/content/Context;

.field private executor:Ljava/util/concurrent/Executor;

.field private final fileSaver:Lcom/google/glass/util/FileSaver;

.field private final fullSize:Lcom/google/glass/camera/Size;

.field private final itemType:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

.field private final previewSize:Lcom/google/glass/camera/Size;

.field private final timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

.field private final timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field private final timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/timeline/TimelineItemCreationHelper;Lcom/google/glass/timeline/TimelineItemLocationHelper;Ljava/util/concurrent/Executor;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/glass/camera/Size;Lcom/google/glass/camera/Size;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timelineItemDatabaseHelper"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .param p3, "timelineItemCreationHelper"    # Lcom/google/glass/timeline/TimelineItemCreationHelper;
    .param p4, "timelineItemLocationHelper"    # Lcom/google/glass/timeline/TimelineItemLocationHelper;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "itemType"    # Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;
    .param p7, "previewSize"    # Lcom/google/glass/camera/Size;
    .param p8, "fullSize"    # Lcom/google/glass/camera/Size;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/google/glass/util/FileSaver;

    sget-object v1, Lcom/google/glass/camera/CameraConstants;->DCIM_DIRECTORY:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/glass/util/FileSaver;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/composite/CompositeBuilder;->fileSaver:Lcom/google/glass/util/FileSaver;

    .line 71
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/composite/CompositeBuilder;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    .line 102
    iput-object p1, p0, Lcom/google/glass/composite/CompositeBuilder;->context:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/google/glass/composite/CompositeBuilder;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 104
    iput-object p3, p0, Lcom/google/glass/composite/CompositeBuilder;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    .line 105
    iput-object p4, p0, Lcom/google/glass/composite/CompositeBuilder;->timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

    .line 106
    iput-object p5, p0, Lcom/google/glass/composite/CompositeBuilder;->executor:Ljava/util/concurrent/Executor;

    .line 107
    iput-object p6, p0, Lcom/google/glass/composite/CompositeBuilder;->itemType:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .line 108
    iput-object p7, p0, Lcom/google/glass/composite/CompositeBuilder;->previewSize:Lcom/google/glass/camera/Size;

    .line 109
    iput-object p8, p0, Lcom/google/glass/composite/CompositeBuilder;->fullSize:Lcom/google/glass/camera/Size;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/composite/CompositeBuilder;)Lcom/google/glass/camera/Size;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/composite/CompositeBuilder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/composite/CompositeBuilder;->previewSize:Lcom/google/glass/camera/Size;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/composite/CompositeBuilder;)Lcom/google/glass/camera/Size;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/composite/CompositeBuilder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/composite/CompositeBuilder;->fullSize:Lcom/google/glass/camera/Size;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/composite/CompositeBuilder;)Lcom/google/glass/util/FileSaver;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/composite/CompositeBuilder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/composite/CompositeBuilder;->fileSaver:Lcom/google/glass/util/FileSaver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/composite/CompositeBuilder;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/composite/CompositeBuilder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/composite/CompositeBuilder;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/composite/CompositeBuilder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/composite/CompositeBuilder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/composite/CompositeBuilder;->context:Landroid/content/Context;

    return-object v0
.end method

.method private createTimelineItem(Ljava/lang/String;J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "captureTimeMillis"    # J

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 350
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/google/glass/composite/CompositeBuilder;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Empty file path."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    const/4 v1, 0x0

    .line 377
    :goto_0
    return-object v1

    .line 355
    :cond_0
    iget-object v2, p0, Lcom/google/glass/composite/CompositeBuilder;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    invoke-virtual {v2}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->createTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 356
    .local v1, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v2, p0, Lcom/google/glass/composite/CompositeBuilder;->timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

    invoke-virtual {v2, v1}, Lcom/google/glass/timeline/TimelineItemLocationHelper;->populateLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 358
    const/16 v2, 0x15

    invoke-static {v1, v2}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 359
    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 360
    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 362
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    .line 363
    .local v0, "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 364
    const-string v2, "image/jpeg"

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 365
    invoke-static {v1, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->addAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)V

    .line 367
    invoke-virtual {v1, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setViewType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 368
    invoke-virtual {v1, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setAttributionType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 370
    invoke-virtual {v1, p2, p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCreationTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 371
    invoke-virtual {v1, p2, p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 373
    invoke-static {}, Lcom/google/glass/timeline/CameraBundleHelper;->getCurrentBundleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setBundleId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 375
    invoke-static {v1, v4}, Lcom/google/glass/timeline/TimelineItemUtils;->addSharingFeature(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    goto :goto_0
.end method

.method private getFilename(J)Ljava/lang/String;
    .locals 4
    .param p1, "captureTimeMillis"    # J

    .prologue
    .line 292
    const-string v0, "%s_x%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Lcom/google/glass/util/FileHelper;->formatTimestamp(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, ".jpg"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildCompositeAsync(Lcom/google/glass/camera/Picture;ZLcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;JLcom/google/glass/composite/CompositeBuilder$CompositeReadyCallback;)V
    .locals 8
    .param p1, "picture"    # Lcom/google/glass/camera/Picture;
    .param p2, "isPreview"    # Z
    .param p3, "previewItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p4, "captureTimeMillis"    # J
    .param p6, "callback"    # Lcom/google/glass/composite/CompositeBuilder$CompositeReadyCallback;

    .prologue
    .line 149
    new-instance v0, Lcom/google/glass/composite/CompositeBuilder$1;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-wide v4, p4

    move-object v6, p3

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/composite/CompositeBuilder$1;-><init>(Lcom/google/glass/composite/CompositeBuilder;ZLcom/google/glass/camera/Picture;JLcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/composite/CompositeBuilder$CompositeReadyCallback;)V

    iget-object v1, p0, Lcom/google/glass/composite/CompositeBuilder;->executor:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 207
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/composite/CompositeBuilder$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 208
    return-void
.end method

.method varargs copyExifTags(Lcom/android/camera/exif/ExifInterface;Lcom/android/camera/exif/ExifInterface;[I)V
    .locals 6
    .param p1, "sourceExif"    # Lcom/android/camera/exif/ExifInterface;
    .param p2, "targetExif"    # Lcom/android/camera/exif/ExifInterface;
    .param p3, "tagIds"    # [I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 548
    array-length v4, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget v0, p3, v3

    .line 549
    .local v0, "tagId":I
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifInterface;->getDefinedTagType(I)S

    move-result v1

    .line 551
    .local v1, "tagType":S
    packed-switch v1, :pswitch_data_0

    .line 575
    :pswitch_0
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagValue(I)Ljava/lang/Object;

    move-result-object v2

    .line 579
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 580
    invoke-virtual {p2, v0, v2}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 548
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 553
    :pswitch_1
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v2

    .line 555
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 556
    check-cast v2, Ljava/lang/String;

    .end local v2    # "value":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_1

    .line 561
    .end local v2    # "value":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagLongValue(I)Ljava/lang/Long;

    move-result-object v2

    .line 562
    .local v2, "value":Ljava/lang/Long;
    goto :goto_1

    .line 565
    .end local v2    # "value":Ljava/lang/Long;
    :pswitch_3
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagRationalValue(I)Lcom/android/camera/exif/Rational;

    move-result-object v2

    .line 566
    .local v2, "value":Lcom/android/camera/exif/Rational;
    goto :goto_1

    .line 568
    .end local v2    # "value":Lcom/android/camera/exif/Rational;
    :pswitch_4
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagByteValue(I)Ljava/lang/Byte;

    move-result-object v2

    .line 569
    .local v2, "value":Ljava/lang/Byte;
    goto :goto_1

    .line 571
    .end local v2    # "value":Ljava/lang/Byte;
    :pswitch_5
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v2

    .line 572
    .local v2, "value":Ljava/lang/Integer;
    goto :goto_1

    .line 583
    .end local v0    # "tagId":I
    .end local v1    # "tagType":S
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_2
    return-void

    .line 551
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected abstract createComposite(Landroid/graphics/Bitmap;Lcom/google/glass/camera/Size;)Landroid/graphics/Bitmap;
.end method

.method protected getCachedFilesManager()Lcom/google/glass/util/CachedFilesManager;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/glass/composite/CompositeBuilder;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/glass/composite/CompositeBuilder;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected abstract getLogger()Lcom/google/glass/logging/FormattingLogger;
.end method

.method getThumbnailSize(II)Lcom/google/glass/camera/Size;
    .locals 7
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/16 v5, 0x140

    const/high16 v6, 0x43a00000    # 320.0f

    .line 590
    move v3, p1

    .line 591
    .local v3, "width":I
    move v2, p2

    .line 592
    .local v2, "height":I
    const/4 v1, 0x0

    .line 595
    .local v1, "downsampleBits":I
    :goto_0
    rem-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_0

    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_0

    .line 596
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-le v4, v5, :cond_0

    const/4 v4, 0x4

    if-ge v1, v4, :cond_0

    .line 598
    shr-int/lit8 v3, v3, 0x1

    .line 599
    shr-int/lit8 v2, v2, 0x1

    .line 600
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 604
    :cond_0
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-le v4, v5, :cond_1

    .line 605
    int-to-float v4, v3

    int-to-float v5, v2

    div-float v0, v4, v5

    .line 606
    .local v0, "aspectRatio":F
    if-le v3, v2, :cond_2

    .line 607
    const/16 v3, 0x140

    .line 608
    div-float v4, v6, v0

    float-to-int v2, v4

    .line 616
    .end local v0    # "aspectRatio":F
    :cond_1
    :goto_1
    div-int/lit8 v4, v3, 0x10

    mul-int/lit8 v3, v4, 0x10

    .line 617
    div-int/lit8 v4, v2, 0x10

    mul-int/lit8 v2, v4, 0x10

    .line 619
    new-instance v4, Lcom/google/glass/camera/Size;

    invoke-direct {v4, v3, v2}, Lcom/google/glass/camera/Size;-><init>(II)V

    return-object v4

    .line 610
    .restart local v0    # "aspectRatio":F
    :cond_2
    mul-float v4, v6, v0

    float-to-int v3, v4

    .line 611
    const/16 v2, 0x140

    goto :goto_1
.end method

.method insertFullTimelineItem(Ljava/lang/String;J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 5
    .param p1, "fullFilePath"    # Ljava/lang/String;
    .param p2, "captureTimeMillis"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 325
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 327
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/google/glass/composite/CompositeBuilder;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Empty full file path."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 345
    :goto_0
    return-object v0

    .line 332
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/composite/CompositeBuilder;->createTimelineItem(Ljava/lang/String;J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 335
    .local v0, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 337
    iget-object v2, p0, Lcom/google/glass/composite/CompositeBuilder;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v3, p0, Lcom/google/glass/composite/CompositeBuilder;->itemType:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    invoke-virtual {v2, v0, v3, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->insertTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 338
    goto :goto_0

    .line 341
    :cond_1
    iget-object v1, p0, Lcom/google/glass/composite/CompositeBuilder;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.glass.camera.PHOTO_DELETED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->insertPostDeleteIntent(Ljava/lang/String;Landroid/content/Intent;)Landroid/net/Uri;

    .line 343
    iget-object v1, p0, Lcom/google/glass/composite/CompositeBuilder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/composite/CompositeBuilder;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    invoke-static {v1, v2, v0}, Lcom/google/glass/timeline/CameraBundleHelper;->updateBundleIfNecessary(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_0
.end method

.method insertPreviewTimelineItem(Ljava/lang/String;J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 5
    .param p1, "previewFilePath"    # Ljava/lang/String;
    .param p2, "captureTimeMillis"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 299
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 301
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/google/glass/composite/CompositeBuilder;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Empty preview file path."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 319
    :goto_0
    return-object v0

    .line 306
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/composite/CompositeBuilder;->createTimelineItem(Ljava/lang/String;J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 309
    .local v0, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 311
    iget-object v2, p0, Lcom/google/glass/composite/CompositeBuilder;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v3, p0, Lcom/google/glass/composite/CompositeBuilder;->itemType:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    invoke-virtual {v2, v0, v3, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->insertTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 312
    goto :goto_0

    .line 315
    :cond_1
    iget-object v1, p0, Lcom/google/glass/composite/CompositeBuilder;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.glass.camera.PHOTO_DELETED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->insertPostDeleteIntent(Ljava/lang/String;Landroid/content/Intent;)Landroid/net/Uri;

    .line 317
    iget-object v1, p0, Lcom/google/glass/composite/CompositeBuilder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/composite/CompositeBuilder;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    invoke-static {v1, v2, v0}, Lcom/google/glass/timeline/CameraBundleHelper;->updateBundleIfNecessary(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_0
.end method

.method loadPicture(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 214
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 216
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/google/glass/composite/CompositeBuilder;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Empty file path."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    const/4 v0, 0x0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method saveFullComposite(Lcom/google/glass/util/FileSaver;Landroid/graphics/Bitmap;JLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "fileSaver"    # Lcom/google/glass/util/FileSaver;
    .param p2, "fullComposite"    # Landroid/graphics/Bitmap;
    .param p3, "captureTimeMillis"    # J
    .param p5, "pictureFilePath"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 268
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 270
    if-nez p2, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/google/glass/composite/CompositeBuilder;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Null full composite."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 287
    :goto_0
    return-object v0

    .line 275
    :cond_0
    if-nez p1, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/google/glass/composite/CompositeBuilder;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Not saving composite, because there is no file saver."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 277
    goto :goto_0

    .line 280
    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/google/glass/composite/CompositeBuilder;->getFilename(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/glass/util/FileSaver;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "filePath":Ljava/lang/String;
    invoke-virtual {p0, p2, v0, p5}, Lcom/google/glass/composite/CompositeBuilder;->saveWithExif(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    .line 282
    goto :goto_0

    .line 285
    :cond_2
    iget-object v1, p0, Lcom/google/glass/composite/CompositeBuilder;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/glass/camera/MediaScannerHelper;->scanFile(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method savePreviewComposite(Landroid/graphics/Bitmap;J)Ljava/lang/String;
    .locals 6
    .param p1, "previewComposite"    # Landroid/graphics/Bitmap;
    .param p2, "captureTimeMillis"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 233
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 235
    if-nez p1, :cond_1

    .line 236
    invoke-virtual {p0}, Lcom/google/glass/composite/CompositeBuilder;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Null preview composite."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    :cond_0
    :goto_0
    return-object v2

    .line 240
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/google/glass/composite/CompositeBuilder;->getFilename(J)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "filename":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/glass/composite/CompositeBuilder;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v4, Lcom/google/glass/util/FileType;->THUMBNAIL:Lcom/google/glass/util/FileType;

    new-instance v5, Lcom/google/glass/composite/CompositeBuilder$2;

    invoke-direct {v5, p0, p1}, Lcom/google/glass/composite/CompositeBuilder$2;-><init>(Lcom/google/glass/composite/CompositeBuilder;Landroid/graphics/Bitmap;)V

    .line 242
    invoke-virtual {v3, v4, v0, v5}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/FileType;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    move-result v1

    .line 253
    .local v1, "isSaved":Z
    if-eqz v1, :cond_0

    .line 257
    iget-object v2, p0, Lcom/google/glass/composite/CompositeBuilder;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v3, Lcom/google/glass/util/FileType;->THUMBNAIL:Lcom/google/glass/util/FileType;

    invoke-virtual {v2, v3, v0}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method saveWithExif(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "composite"    # Landroid/graphics/Bitmap;
    .param p2, "compositeFilePath"    # Ljava/lang/String;
    .param p3, "pictureFilePath"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 458
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 461
    new-instance v1, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v1}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 463
    .local v1, "sourceExif":Lcom/android/camera/exif/ExifInterface;
    :try_start_0
    invoke-virtual {v1, p3}, Lcom/android/camera/exif/ExifInterface;->readExif(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    new-instance v2, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v2}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 473
    .local v2, "targetExif":Lcom/android/camera/exif/ExifInterface;
    const/16 v7, 0x2f

    new-array v7, v7, [I

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    aput v8, v7, v6

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_COLOR_SPACE:I

    aput v8, v7, v5

    const/4 v8, 0x2

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    aput v9, v7, v8

    const/4 v8, 0x3

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_CONTRAST:I

    aput v9, v7, v8

    const/4 v8, 0x4

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    aput v9, v7, v8

    const/4 v8, 0x5

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME:I

    aput v9, v7, v8

    const/4 v8, 0x6

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    aput v9, v7, v8

    const/4 v8, 0x7

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    aput v9, v7, v8

    const/16 v8, 0x8

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    aput v9, v7, v8

    const/16 v8, 0x9

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    aput v9, v7, v8

    const/16 v8, 0xa

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    aput v9, v7, v8

    const/16 v8, 0xb

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    aput v9, v7, v8

    const/16 v8, 0xc

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH:I

    aput v9, v7, v8

    const/16 v8, 0xd

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    aput v9, v7, v8

    const/16 v8, 0xe

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_F_NUMBER:I

    aput v9, v7, v8

    const/16 v8, 0xf

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    aput v9, v7, v8

    const/16 v8, 0x10

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    aput v9, v7, v8

    const/16 v8, 0x11

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    aput v9, v7, v8

    const/16 v8, 0x12

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    aput v9, v7, v8

    const/16 v8, 0x13

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    aput v9, v7, v8

    const/16 v8, 0x14

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DOP:I

    aput v9, v7, v8

    const/16 v8, 0x15

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    aput v9, v7, v8

    const/16 v8, 0x16

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    aput v9, v7, v8

    const/16 v8, 0x17

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    aput v9, v7, v8

    const/16 v8, 0x18

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    aput v9, v7, v8

    const/16 v8, 0x19

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    aput v9, v7, v8

    const/16 v8, 0x1a

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    aput v9, v7, v8

    const/16 v8, 0x1b

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    aput v9, v7, v8

    const/16 v8, 0x1c

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    aput v9, v7, v8

    const/16 v8, 0x1d

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_MAKE:I

    aput v9, v7, v8

    const/16 v8, 0x1e

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    aput v9, v7, v8

    const/16 v8, 0x1f

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_METERING_MODE:I

    aput v9, v7, v8

    const/16 v8, 0x20

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_MODEL:I

    aput v9, v7, v8

    const/16 v8, 0x21

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    aput v9, v7, v8

    const/16 v8, 0x22

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    aput v9, v7, v8

    const/16 v8, 0x23

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_SATURATION:I

    aput v9, v7, v8

    const/16 v8, 0x24

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    aput v9, v7, v8

    const/16 v8, 0x25

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_SCENE_TYPE:I

    aput v9, v7, v8

    const/16 v8, 0x26

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_SENSING_METHOD:I

    aput v9, v7, v8

    const/16 v8, 0x27

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_SHARPNESS:I

    aput v9, v7, v8

    const/16 v8, 0x28

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    aput v9, v7, v8

    const/16 v8, 0x29

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_SOFTWARE:I

    aput v9, v7, v8

    const/16 v8, 0x2a

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    aput v9, v7, v8

    const/16 v8, 0x2b

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    aput v9, v7, v8

    const/16 v8, 0x2c

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_X_RESOLUTION:I

    aput v9, v7, v8

    const/16 v8, 0x2d

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    aput v9, v7, v8

    const/16 v8, 0x2e

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    aput v9, v7, v8

    invoke-virtual {p0, v1, v2, v7}, Lcom/google/glass/composite/CompositeBuilder;->copyExifTags(Lcom/android/camera/exif/ExifInterface;Lcom/android/camera/exif/ExifInterface;[I)V

    .line 526
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/google/glass/composite/CompositeBuilder;->getThumbnailSize(II)Lcom/google/glass/camera/Size;

    move-result-object v4

    .line 527
    .local v4, "thumbnailSize":Lcom/google/glass/camera/Size;
    iget v7, v4, Lcom/google/glass/camera/Size;->width:I

    iget v8, v4, Lcom/google/glass/camera/Size;->height:I

    invoke-static {p1, v7, v8, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 529
    .local v3, "thumbnail":Landroid/graphics/Bitmap;
    invoke-virtual {v2, v3}, Lcom/android/camera/exif/ExifInterface;->setCompressedThumbnail(Landroid/graphics/Bitmap;)Z

    .line 530
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 534
    :try_start_1
    invoke-virtual {v2, p1, p2}, Lcom/android/camera/exif/ExifInterface;->writeExif(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 540
    .end local v2    # "targetExif":Lcom/android/camera/exif/ExifInterface;
    .end local v3    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v4    # "thumbnailSize":Lcom/google/glass/camera/Size;
    :goto_0
    return v5

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/google/glass/composite/CompositeBuilder;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    const-string v8, "Failed to read source EXIF."

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-interface {v7, v8, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v6

    .line 466
    goto :goto_0

    .line 535
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "targetExif":Lcom/android/camera/exif/ExifInterface;
    .restart local v3    # "thumbnail":Landroid/graphics/Bitmap;
    .restart local v4    # "thumbnailSize":Lcom/google/glass/camera/Size;
    :catch_1
    move-exception v0

    .line 536
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/google/glass/composite/CompositeBuilder;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    const-string v8, "Failed to write EXIF."

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-interface {v7, v8, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v6

    .line 537
    goto :goto_0
.end method

.method public setCachedFilesManagerForTest(Lcom/google/glass/util/CachedFilesManager;)V
    .locals 0
    .param p1, "cachedFilesManager"    # Lcom/google/glass/util/CachedFilesManager;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 447
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 448
    iput-object p1, p0, Lcom/google/glass/composite/CompositeBuilder;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    .line 449
    return-void
.end method

.method public setExecutorForTest(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 441
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 442
    iput-object p1, p0, Lcom/google/glass/composite/CompositeBuilder;->executor:Ljava/util/concurrent/Executor;

    .line 443
    return-void
.end method

.method updateFullTimelineItem(Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 6
    .param p1, "fullFilePath"    # Ljava/lang/String;
    .param p2, "previewItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 384
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 386
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 387
    invoke-virtual {p0}, Lcom/google/glass/composite/CompositeBuilder;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Empty full file path."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    .line 436
    :cond_0
    :goto_0
    return-object v1

    .line 390
    :cond_1
    if-nez p2, :cond_2

    .line 391
    invoke-virtual {p0}, Lcom/google/glass/composite/CompositeBuilder;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Null preview item."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    .line 392
    goto :goto_0

    .line 395
    :cond_2
    new-instance v0, Lcom/google/glass/composite/CompositeBuilder$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/glass/composite/CompositeBuilder$3;-><init>(Lcom/google/glass/composite/CompositeBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)V

    .line 428
    .local v0, "update":Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;
    iget-object v3, p0, Lcom/google/glass/composite/CompositeBuilder;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    invoke-virtual {v3, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;)V

    .line 429
    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 431
    .local v1, "updatedItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsDeleted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 432
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/composite/CompositeBuilder;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Did not update item, because it no longer exists."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    .line 433
    goto :goto_0
.end method
