.class public Lcom/google/glass/deferredcontent/VideoThumbnailLoadingTask;
.super Lcom/google/glass/deferredcontent/LoadingTask;
.source "VideoThumbnailLoadingTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/deferredcontent/LoadingTask",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final attachment:Lcom/google/googlex/glass/common/proto/nano/Attachment;

.field private final imageView:Landroid/widget/ImageView;

.field private final videoHint:Landroid/view/View;

.field private final videoThumbnailHelper:Lcom/google/glass/util/VideoThumbnailHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/nano/Attachment;Landroid/widget/ImageView;Landroid/view/View;Lcom/google/glass/util/VideoThumbnailHelper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attachment"    # Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .param p3, "imageView"    # Landroid/widget/ImageView;
    .param p4, "videoHint"    # Landroid/view/View;
    .param p5, "videoThumbnailHelper"    # Lcom/google/glass/util/VideoThumbnailHelper;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/google/glass/deferredcontent/LoadingTask;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p2, p0, Lcom/google/glass/deferredcontent/VideoThumbnailLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/nano/Attachment;

    .line 23
    iput-object p3, p0, Lcom/google/glass/deferredcontent/VideoThumbnailLoadingTask;->imageView:Landroid/widget/ImageView;

    .line 24
    iput-object p4, p0, Lcom/google/glass/deferredcontent/VideoThumbnailLoadingTask;->videoHint:Landroid/view/View;

    .line 25
    iput-object p5, p0, Lcom/google/glass/deferredcontent/VideoThumbnailLoadingTask;->videoThumbnailHelper:Lcom/google/glass/util/VideoThumbnailHelper;

    .line 26
    return-void
.end method


# virtual methods
.method protected bindContent(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x1

    .line 54
    if-eqz p1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/google/glass/deferredcontent/VideoThumbnailLoadingTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 56
    iget-object v0, p0, Lcom/google/glass/deferredcontent/VideoThumbnailLoadingTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/deferredcontent/VideoThumbnailLoadingTask;->showView(Landroid/view/View;Z)V

    .line 57
    iget-object v0, p0, Lcom/google/glass/deferredcontent/VideoThumbnailLoadingTask;->videoHint:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/deferredcontent/VideoThumbnailLoadingTask;->showView(Landroid/view/View;Z)V

    .line 59
    :cond_0
    return-void
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/glass/deferredcontent/VideoThumbnailLoadingTask;->bindContent(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected getUserEventTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "vt"

    return-object v0
.end method

.method protected loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "isCancelled"    # Lcom/google/glass/util/Condition;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/deferredcontent/VideoThumbnailLoadingTask;->videoThumbnailHelper:Lcom/google/glass/util/VideoThumbnailHelper;

    iget-object v1, p0, Lcom/google/glass/deferredcontent/VideoThumbnailLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/nano/Attachment;

    invoke-virtual {v0, v1, p1}, Lcom/google/glass/util/VideoThumbnailHelper;->loadThumbnail(Lcom/google/googlex/glass/common/proto/nano/Attachment;Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/glass/deferredcontent/VideoThumbnailLoadingTask;->loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected prepareContent()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    iget-object v1, p0, Lcom/google/glass/deferredcontent/VideoThumbnailLoadingTask;->videoThumbnailHelper:Lcom/google/glass/util/VideoThumbnailHelper;

    iget-object v2, p0, Lcom/google/glass/deferredcontent/VideoThumbnailLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/nano/Attachment;

    invoke-virtual {v1, v2}, Lcom/google/glass/util/VideoThumbnailHelper;->getCachedThumbnail(Lcom/google/googlex/glass/common/proto/nano/Attachment;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 36
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 37
    iget-object v1, p0, Lcom/google/glass/deferredcontent/VideoThumbnailLoadingTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 38
    iget-object v1, p0, Lcom/google/glass/deferredcontent/VideoThumbnailLoadingTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v3}, Lcom/google/glass/deferredcontent/VideoThumbnailLoadingTask;->showView(Landroid/view/View;Z)V

    .line 39
    iget-object v1, p0, Lcom/google/glass/deferredcontent/VideoThumbnailLoadingTask;->videoHint:Landroid/view/View;

    invoke-virtual {p0, v1, v3}, Lcom/google/glass/deferredcontent/VideoThumbnailLoadingTask;->showView(Landroid/view/View;Z)V

    .line 40
    invoke-virtual {p0, v3}, Lcom/google/glass/deferredcontent/VideoThumbnailLoadingTask;->cancel(Z)V

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/google/glass/deferredcontent/VideoThumbnailLoadingTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v3, v4}, Lcom/google/glass/deferredcontent/VideoThumbnailLoadingTask;->hideView(Landroid/view/View;ZZ)V

    .line 43
    iget-object v1, p0, Lcom/google/glass/deferredcontent/VideoThumbnailLoadingTask;->videoHint:Landroid/view/View;

    invoke-virtual {p0, v1, v3, v4}, Lcom/google/glass/deferredcontent/VideoThumbnailLoadingTask;->hideView(Landroid/view/View;ZZ)V

    goto :goto_0
.end method
