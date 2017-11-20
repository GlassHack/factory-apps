.class public Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;
.super Lcom/google/glass/deferredcontent/LoadingTask;
.source "ImageAttachmentLoadingTask.java"


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

.field private final bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private final imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/nano/Attachment;Landroid/widget/ImageView;Lcom/google/glass/util/CachedBitmapFactory;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attachment"    # Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .param p3, "imageView"    # Landroid/widget/ImageView;
    .param p4, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/glass/deferredcontent/LoadingTask;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object p2, p0, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/nano/Attachment;

    .line 21
    iput-object p4, p0, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 22
    iput-object p3, p0, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->imageView:Landroid/widget/ImageView;

    .line 23
    return-void
.end method


# virtual methods
.method protected bindContent(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 51
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->showView(Landroid/view/View;Z)V

    .line 53
    :cond_0
    return-void
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->bindContent(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected getUserEventTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "ia"

    return-object v0
.end method

.method protected loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "isCancelled"    # Lcom/google/glass/util/Condition;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/nano/Attachment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/glass/util/CachedBitmapFactory;->decodeAttachment(Lcom/google/googlex/glass/common/proto/nano/Attachment;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected prepareContent()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 32
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v2, p0, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/nano/Attachment;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v5, v3}, Lcom/google/glass/util/CachedBitmapFactory;->decodeAttachment(Lcom/google/googlex/glass/common/proto/nano/Attachment;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 33
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 34
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 35
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v4}, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->showView(Landroid/view/View;Z)V

    .line 36
    invoke-virtual {p0, v4}, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->cancel(Z)V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v4, v5}, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->hideView(Landroid/view/View;ZZ)V

    goto :goto_0
.end method
