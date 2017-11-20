.class public abstract Lcom/google/glass/deferredcontent/PersonImageDownloadTask;
.super Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;
.source "PersonImageDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/deferredcontent/PersonImageDownloadTask$1;,
        Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;
    }
.end annotation


# static fields
.field public static final CROP_TYPE:I = 0x1

.field private static final MAX_URL_CACHE_SIZE:I = 0x40

.field private static final NO_IMAGE_ID:I = -0x1

.field private static final PROFILE_IMAGE_URL_CACHE:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private defaultImage:I

.field private labelVisibility:Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;

.field private final nameView:Landroid/widget/TextView;

.field private final pictureView:Landroid/widget/ImageView;

.field private shouldFadeIn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->PROFILE_IMAGE_URL_CACHE:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p3, "imageUrl"    # Ljava/lang/String;
    .param p4, "pictureView"    # Landroid/widget/ImageView;
    .param p5, "nameView"    # Landroid/widget/TextView;
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    const/4 v6, 0x1

    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Ljava/lang/String;III)V

    .line 50
    sget-object v0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;->DEFAULT:Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;

    iput-object v0, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->labelVisibility:Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;

    .line 51
    iput-boolean v6, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->shouldFadeIn:Z

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->defaultImage:I

    .line 66
    iput-object p4, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    .line 67
    iput-object p5, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->nameView:Landroid/widget/TextView;

    .line 68
    return-void
.end method


# virtual methods
.method protected bindContent(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 193
    if-eqz p1, :cond_1

    .line 194
    iget-object v0, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 198
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-boolean v1, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->shouldFadeIn:Z

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->setViewVisibilities(ZZ)V

    .line 199
    return-void

    .line 195
    :cond_1
    iget v0, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->defaultImage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->defaultImage:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 198
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->bindContent(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected abstract getCacheId()Ljava/lang/String;
.end method

.method protected abstract getDisplayText()Ljava/lang/String;
.end method

.method protected loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "isCancelled"    # Lcom/google/glass/util/Condition;

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->onPreLoad()V

    .line 172
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "imageUrl":Ljava/lang/String;
    invoke-super {p0, p1}, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;->loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 174
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->getCacheId()Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "cacheId":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 178
    sget-object v3, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->PROFILE_IMAGE_URL_CACHE:Landroid/util/LruCache;

    invoke-virtual {v3, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPreLoad()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method protected prepareContent(F)V
    .locals 6
    .param p1, "absScrollVelocity"    # F

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->getCacheId()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "cacheId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    .line 75
    sget-object v3, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->PROFILE_IMAGE_URL_CACHE:Landroid/util/LruCache;

    invoke-virtual {v3, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->setImageUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    :cond_0
    iget-object v3, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->nameView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 79
    iget-object v3, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->nameView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->getDisplayText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_1
    const/4 v0, 0x0

    .line 86
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/high16 v3, 0x40800000    # 4.0f

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    .line 87
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->loadContentFromCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 89
    :cond_2
    if-eqz v0, :cond_4

    const/4 v2, 0x1

    .line 90
    .local v2, "hasImage":Z
    :goto_0
    if-eqz v2, :cond_5

    .line 91
    iget-object v3, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 92
    invoke-virtual {p0, v4}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->cancel(Z)V

    .line 97
    :cond_3
    :goto_1
    invoke-virtual {p0, v2, v4}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->setViewVisibilities(ZZ)V

    .line 98
    return-void

    .end local v2    # "hasImage":Z
    :cond_4
    move v2, v4

    .line 89
    goto :goto_0

    .line 93
    .restart local v2    # "hasImage":Z
    :cond_5
    iget v3, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->defaultImage:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    .line 94
    iget-object v3, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->defaultImage:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public setDefaultImageResId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->defaultImage:I

    .line 148
    return-void
.end method

.method public setLabelVisibility(Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;)V
    .locals 2
    .param p1, "labelVisibility"    # Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setLabelVisibility before the task is run"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    iput-object p1, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->labelVisibility:Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;

    .line 141
    return-void
.end method

.method public setShouldFadeIn(Z)V
    .locals 0
    .param p1, "shouldFadeIn"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->shouldFadeIn:Z

    .line 155
    return-void
.end method

.method setViewVisibilities(ZZ)V
    .locals 3
    .param p1, "hasImage"    # Z
    .param p2, "animate"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 108
    if-nez p1, :cond_0

    iget v0, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->defaultImage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p2}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->showView(Landroid/view/View;Z)V

    .line 115
    :goto_0
    sget-object v0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask$1;->$SwitchMap$com$google$glass$deferredcontent$PersonImageDownloadTask$LabelVisibility:[I

    iget-object v1, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->labelVisibility:Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;

    invoke-virtual {v1}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 130
    :goto_1
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p2, v2}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->hideView(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 117
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->nameView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p2, v2}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->hideView(Landroid/view/View;ZZ)V

    goto :goto_1

    .line 120
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->nameView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p2}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->showView(Landroid/view/View;Z)V

    goto :goto_1

    .line 123
    :pswitch_2
    if-eqz p1, :cond_2

    .line 124
    iget-object v0, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->nameView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p2, v2}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->hideView(Landroid/view/View;ZZ)V

    goto :goto_1

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->nameView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p2}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->showView(Landroid/view/View;Z)V

    goto :goto_1

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
