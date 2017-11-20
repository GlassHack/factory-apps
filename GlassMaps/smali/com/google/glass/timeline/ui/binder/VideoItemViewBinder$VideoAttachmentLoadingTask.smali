.class Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;
.super Lcom/google/glass/deferredcontent/LoadingTask;
.source "SourceFile"


# instance fields
.field private final attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

.field private final overlayIconView:Landroid/widget/ImageView;

.field private final placeholderView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder;

.field private final thumbnailView:Landroid/widget/ImageView;

.field private final videoThumbnailHelper:Lcom/google/glass/util/VideoThumbnailHelper;


# direct methods
.method public constructor <init>(Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/glass/util/CachedBitmapFactory;)V
    .locals 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->this$0:Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder;

    .line 50
    invoke-direct {p0, p2}, Lcom/google/glass/deferredcontent/LoadingTask;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p3, p0, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 52
    iput-object p4, p0, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->thumbnailView:Landroid/widget/ImageView;

    .line 53
    iput-object p5, p0, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->placeholderView:Landroid/widget/ImageView;

    .line 54
    iput-object p6, p0, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->overlayIconView:Landroid/widget/ImageView;

    .line 55
    new-instance v0, Lcom/google/glass/util/VideoThumbnailHelper;

    .line 56
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v1

    invoke-direct {v0, p7, v1}, Lcom/google/glass/util/VideoThumbnailHelper;-><init>(Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/util/CachedFilesManager;)V

    iput-object v0, p0, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->videoThumbnailHelper:Lcom/google/glass/util/VideoThumbnailHelper;

    .line 57
    return-void
.end method


# virtual methods
.method protected bindContent(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 93
    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 95
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->showView(Landroid/view/View;Z)V

    .line 96
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->overlayIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->showView(Landroid/view/View;Z)V

    .line 97
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->placeholderView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->hideView(Landroid/view/View;ZZ)V

    .line 99
    :cond_0
    return-void
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->bindContent(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected getUserEventTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "v"

    return-object v0
.end method

.method protected loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->videoThumbnailHelper:Lcom/google/glass/util/VideoThumbnailHelper;

    iget-object v1, p0, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-virtual {v0, v1, p1}, Lcom/google/glass/util/VideoThumbnailHelper;->loadThumbnail(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected prepareContent(F)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    const/4 v0, 0x0

    .line 70
    const/high16 v1, 0x40800000    # 4.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->videoThumbnailHelper:Lcom/google/glass/util/VideoThumbnailHelper;

    iget-object v1, p0, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/VideoThumbnailHelper;->getCachedThumbnail(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    :cond_0
    if-eqz v0, :cond_1

    .line 74
    iget-object v1, p0, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->showView(Landroid/view/View;Z)V

    .line 76
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->overlayIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->showView(Landroid/view/View;Z)V

    .line 77
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->placeholderView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2, v2}, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->hideView(Landroid/view/View;ZZ)V

    .line 78
    invoke-virtual {p0, v2}, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->cancel(Z)V

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2, v2}, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->hideView(Landroid/view/View;ZZ)V

    .line 81
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->overlayIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2, v2}, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->hideView(Landroid/view/View;ZZ)V

    .line 82
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->placeholderView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;->showView(Landroid/view/View;Z)V

    goto :goto_0
.end method
