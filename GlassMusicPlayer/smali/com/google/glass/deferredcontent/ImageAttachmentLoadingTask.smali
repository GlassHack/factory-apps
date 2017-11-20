.class public Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;
.super Lcom/google/glass/deferredcontent/LoadingTask;
.source "SourceFile"


# instance fields
.field private final attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

.field private final bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private final imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Landroid/widget/ImageView;Lcom/google/glass/util/CachedBitmapFactory;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/glass/deferredcontent/LoadingTask;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p2, p0, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 22
    iput-object p4, p0, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 23
    iput-object p3, p0, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->imageView:Landroid/widget/ImageView;

    .line 24
    return-void
.end method


# virtual methods
.method protected bindContent(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 58
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->showView(Landroid/view/View;Z)V

    .line 60
    :cond_0
    return-void
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->bindContent(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected getUserEventTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "ia"

    return-object v0
.end method

.method protected loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/glass/util/CachedBitmapFactory;->decodeAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected prepareContent(F)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    .line 37
    const/high16 v1, 0x40800000    # 4.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v2, p0, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-virtual {v1, v2, v4, v0}, Lcom/google/glass/util/CachedBitmapFactory;->decodeAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 40
    :cond_0
    if-eqz v0, :cond_1

    .line 41
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 42
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3}, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->showView(Landroid/view/View;Z)V

    .line 43
    invoke-virtual {p0, v3}, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->cancel(Z)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;->hideView(Landroid/view/View;ZZ)V

    goto :goto_0
.end method
