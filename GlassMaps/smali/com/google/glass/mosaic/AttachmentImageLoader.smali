.class public Lcom/google/glass/mosaic/AttachmentImageLoader;
.super Lcom/google/glass/mosaic/BaseImageLoader;
.source "SourceFile"


# static fields
.field private static final SUPPORTED_IMAGE_TYPES:Ljava/util/Set;

.field private static final SUPPORTED_VIDEO_TYPES:Ljava/util/Set;


# instance fields
.field private final attachments:Ljava/util/List;

.field private final videoThumbnailHelper:Lcom/google/glass/util/VideoThumbnailHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/google/android/a/a;

    invoke-direct {v0}, Lcom/google/android/a/a;-><init>()V

    sput-object v0, Lcom/google/glass/mosaic/AttachmentImageLoader;->SUPPORTED_IMAGE_TYPES:Ljava/util/Set;

    .line 34
    sget-object v0, Lcom/google/glass/mosaic/AttachmentImageLoader;->SUPPORTED_IMAGE_TYPES:Ljava/util/Set;

    sget-object v1, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 38
    new-instance v0, Lcom/google/android/a/a;

    invoke-direct {v0}, Lcom/google/android/a/a;-><init>()V

    sput-object v0, Lcom/google/glass/mosaic/AttachmentImageLoader;->SUPPORTED_VIDEO_TYPES:Ljava/util/Set;

    .line 40
    sget-object v0, Lcom/google/glass/mosaic/AttachmentImageLoader;->SUPPORTED_VIDEO_TYPES:Ljava/util/Set;

    sget-object v1, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/util/List;IILcom/google/glass/util/VideoThumbnailHelper;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/mosaic/BaseImageLoader;-><init>(Ljava/util/List;II)V

    .line 46
    iput-object p1, p0, Lcom/google/glass/mosaic/AttachmentImageLoader;->attachments:Ljava/util/List;

    .line 47
    iput-object p4, p0, Lcom/google/glass/mosaic/AttachmentImageLoader;->videoThumbnailHelper:Lcom/google/glass/util/VideoThumbnailHelper;

    .line 48
    return-void
.end method


# virtual methods
.method public createLoadingTask(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Landroid/widget/FrameLayout;III)Lcom/google/glass/deferredcontent/LoadingTask;
    .locals 6

    .prologue
    .line 58
    sget v0, Lcom/google/glass/common/R$id;->image:I

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 59
    iget-object v0, p0, Lcom/google/glass/mosaic/AttachmentImageLoader;->attachments:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 60
    sget-object v0, Lcom/google/glass/mosaic/AttachmentImageLoader;->SUPPORTED_IMAGE_TYPES:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 61
    sget-object v1, Lcom/google/glass/mosaic/AttachmentImageLoader;->SUPPORTED_VIDEO_TYPES:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 63
    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;

    invoke-direct {v0, p1, v2, v3, p2}, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;-><init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Landroid/widget/ImageView;Lcom/google/glass/util/CachedBitmapFactory;)V

    .line 71
    :goto_0
    return-object v0

    .line 65
    :cond_0
    if-eqz v1, :cond_1

    .line 66
    sget v0, Lcom/google/glass/common/R$id;->video_hint:I

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 67
    new-instance v0, Lcom/google/glass/deferredcontent/VideoThumbnailLoadingTask;

    iget-object v5, p0, Lcom/google/glass/mosaic/AttachmentImageLoader;->videoThumbnailHelper:Lcom/google/glass/util/VideoThumbnailHelper;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/deferredcontent/VideoThumbnailLoadingTask;-><init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Landroid/widget/ImageView;Landroid/view/View;Lcom/google/glass/util/VideoThumbnailHelper;)V

    goto :goto_0

    .line 71
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public drawListSize()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/mosaic/AttachmentImageLoader;->attachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getImageSourceKey(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getImageSourceKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-virtual {p0, p1}, Lcom/google/glass/mosaic/AttachmentImageLoader;->getImageSourceKey(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutIdForSize(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/glass/mosaic/AttachmentImageLoader;->attachments:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 82
    sget-object v1, Lcom/google/glass/mosaic/AttachmentImageLoader;->SUPPORTED_IMAGE_TYPES:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 83
    sget-object v2, Lcom/google/glass/mosaic/AttachmentImageLoader;->SUPPORTED_VIDEO_TYPES:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 85
    sget-object v2, Lcom/google/glass/mosaic/AttachmentImageLoader$1;->$SwitchMap$com$google$glass$mosaic$MosaicSpec$LayoutSize:[I

    invoke-virtual {p1}, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 103
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/glass/mosaic/BaseImageLoader;->getLayoutIdForSize(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I

    move-result v0

    :goto_0
    return v0

    .line 87
    :pswitch_0
    if-eqz v1, :cond_1

    .line 88
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_big_photo:I

    goto :goto_0

    .line 89
    :cond_1
    if-eqz v0, :cond_2

    .line 90
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_big_video:I

    goto :goto_0

    .line 96
    :cond_2
    :pswitch_1
    if-eqz v1, :cond_3

    .line 97
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_medium_photo:I

    goto :goto_0

    .line 98
    :cond_3
    if-eqz v0, :cond_0

    .line 99
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_medium_video:I

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
