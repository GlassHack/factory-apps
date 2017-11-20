.class public Lcom/google/glass/mosaic/AttachmentImageLoader;
.super Lcom/google/glass/mosaic/BaseImageLoader;
.source "AttachmentImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/mosaic/BaseImageLoader",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/Attachment;",
        ">;"
    }
.end annotation


# static fields
.field private static final SUPPORTED_IMAGE_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_VIDEO_TYPES:Ljava/util/Set;
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
.field private final attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private final videoThumbnailHelper:Lcom/google/glass/util/VideoThumbnailHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/google/android/util/ArraySet;

    invoke-direct {v0}, Lcom/google/android/util/ArraySet;-><init>()V

    sput-object v0, Lcom/google/glass/mosaic/AttachmentImageLoader;->SUPPORTED_IMAGE_TYPES:Ljava/util/Set;

    .line 32
    sget-object v0, Lcom/google/glass/mosaic/AttachmentImageLoader;->SUPPORTED_IMAGE_TYPES:Ljava/util/Set;

    sget-object v1, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 36
    new-instance v0, Lcom/google/android/util/ArraySet;

    invoke-direct {v0}, Lcom/google/android/util/ArraySet;-><init>()V

    sput-object v0, Lcom/google/glass/mosaic/AttachmentImageLoader;->SUPPORTED_VIDEO_TYPES:Ljava/util/Set;

    .line 38
    sget-object v0, Lcom/google/glass/mosaic/AttachmentImageLoader;->SUPPORTED_VIDEO_TYPES:Ljava/util/Set;

    sget-object v1, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/util/List;IILcom/google/glass/util/VideoThumbnailHelper;)V
    .locals 0
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "videoThumbnailHelper"    # Lcom/google/glass/util/VideoThumbnailHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/Attachment;",
            ">;II",
            "Lcom/google/glass/util/VideoThumbnailHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/Attachment;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/mosaic/BaseImageLoader;-><init>(Ljava/util/List;II)V

    .line 44
    iput-object p1, p0, Lcom/google/glass/mosaic/AttachmentImageLoader;->attachments:Ljava/util/List;

    .line 45
    iput-object p4, p0, Lcom/google/glass/mosaic/AttachmentImageLoader;->videoThumbnailHelper:Lcom/google/glass/util/VideoThumbnailHelper;

    .line 46
    return-void
.end method


# virtual methods
.method public createLoadingTask(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Landroid/widget/FrameLayout;III)Lcom/google/glass/deferredcontent/LoadingTask;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p3, "cellView"    # Landroid/widget/FrameLayout;
    .param p4, "elementIdx"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/glass/util/CachedBitmapFactory;",
            "Landroid/widget/FrameLayout;",
            "III)",
            "Lcom/google/glass/deferredcontent/LoadingTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 56
    sget v0, Lcom/google/glass/common/R$id;->image:I

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 57
    .local v3, "imageView":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/google/glass/mosaic/AttachmentImageLoader;->attachments:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/nano/Attachment;

    .line 58
    .local v2, "attachment":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    sget-object v0, Lcom/google/glass/mosaic/AttachmentImageLoader;->SUPPORTED_IMAGE_TYPES:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 59
    .local v6, "isImageType":Z
    sget-object v0, Lcom/google/glass/mosaic/AttachmentImageLoader;->SUPPORTED_VIDEO_TYPES:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 61
    .local v7, "isVideoType":Z
    if-eqz v6, :cond_0

    .line 62
    new-instance v0, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;

    invoke-direct {v0, p1, v2, v3, p2}, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;-><init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/nano/Attachment;Landroid/widget/ImageView;Lcom/google/glass/util/CachedBitmapFactory;)V

    .line 69
    :goto_0
    return-object v0

    .line 63
    :cond_0
    if-eqz v7, :cond_1

    .line 64
    sget v0, Lcom/google/glass/common/R$id;->video_hint:I

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 65
    .local v4, "videoHint":Landroid/view/View;
    new-instance v0, Lcom/google/glass/deferredcontent/VideoThumbnailLoadingTask;

    iget-object v5, p0, Lcom/google/glass/mosaic/AttachmentImageLoader;->videoThumbnailHelper:Lcom/google/glass/util/VideoThumbnailHelper;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/deferredcontent/VideoThumbnailLoadingTask;-><init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/nano/Attachment;Landroid/widget/ImageView;Landroid/view/View;Lcom/google/glass/util/VideoThumbnailHelper;)V

    goto :goto_0

    .line 69
    .end local v4    # "videoHint":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public drawListSize()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/glass/mosaic/AttachmentImageLoader;->attachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getImageSourceKey(Lcom/google/googlex/glass/common/proto/nano/Attachment;)Ljava/lang/String;
    .locals 1
    .param p1, "attachment"    # Lcom/google/googlex/glass/common/proto/nano/Attachment;

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getImageSourceKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lcom/google/googlex/glass/common/proto/nano/Attachment;

    invoke-virtual {p0, p1}, Lcom/google/glass/mosaic/AttachmentImageLoader;->getImageSourceKey(Lcom/google/googlex/glass/common/proto/nano/Attachment;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutIdForSize(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I
    .locals 5
    .param p1, "layoutSize"    # Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;
    .param p2, "elementIdx"    # I

    .prologue
    .line 79
    iget-object v3, p0, Lcom/google/glass/mosaic/AttachmentImageLoader;->attachments:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;

    .line 80
    .local v0, "attachment":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    sget-object v3, Lcom/google/glass/mosaic/AttachmentImageLoader;->SUPPORTED_IMAGE_TYPES:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 81
    .local v1, "isImageType":Z
    sget-object v3, Lcom/google/glass/mosaic/AttachmentImageLoader;->SUPPORTED_VIDEO_TYPES:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 83
    .local v2, "isVideoType":Z
    sget-object v3, Lcom/google/glass/mosaic/AttachmentImageLoader$1;->$SwitchMap$com$google$glass$mosaic$MosaicSpec$LayoutSize:[I

    invoke-virtual {p1}, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 102
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/glass/mosaic/BaseImageLoader;->getLayoutIdForSize(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I

    move-result v3

    :goto_0
    return v3

    .line 85
    :pswitch_0
    if-eqz v1, :cond_1

    .line 86
    sget v3, Lcom/google/glass/common/R$layout;->mosaic_cell_big_photo:I

    goto :goto_0

    .line 87
    :cond_1
    if-eqz v2, :cond_2

    .line 88
    sget v3, Lcom/google/glass/common/R$layout;->mosaic_cell_big_video:I

    goto :goto_0

    .line 95
    :cond_2
    :pswitch_1
    if-eqz v1, :cond_3

    .line 96
    sget v3, Lcom/google/glass/common/R$layout;->mosaic_cell_medium_photo:I

    goto :goto_0

    .line 97
    :cond_3
    if-eqz v2, :cond_0

    .line 98
    sget v3, Lcom/google/glass/common/R$layout;->mosaic_cell_medium_video:I

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
