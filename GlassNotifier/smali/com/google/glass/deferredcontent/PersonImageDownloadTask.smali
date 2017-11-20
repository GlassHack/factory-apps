.class public abstract Lcom/google/glass/deferredcontent/PersonImageDownloadTask;
.super Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;
.source "PersonImageDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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
.field private centerFillDefaultImage:Z

.field private contactDrawSpec:Lcom/google/glass/widget/ContactDrawable$DrawSpec;

.field private final context:Landroid/content/Context;

.field private defaultImage:I

.field private defaultImageText:Ljava/lang/String;

.field private final height:I

.field private labelVisibility:Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final nameView:Landroid/widget/TextView;

.field private final pictureView:Landroid/widget/ImageView;

.field private shouldFadeIn:Z

.field private showDisplayText:Z

.field private showRectBackground:Z

.field private showRoundedImage:Z

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->PROFILE_IMAGE_URL_CACHE:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p3, "imageUrl"    # Ljava/lang/String;
    .param p4, "pictureView"    # Landroid/widget/ImageView;
    .param p5, "nameView"    # Landroid/widget/TextView;
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 80
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Ljava/lang/String;III)V

    .line 25
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 59
    sget-object v0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;->DEFAULT:Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;

    iput-object v0, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->labelVisibility:Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;

    .line 60
    iput-boolean v6, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->shouldFadeIn:Z

    .line 61
    iput-boolean v7, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->showRoundedImage:Z

    .line 62
    iput-boolean v6, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->showDisplayText:Z

    .line 63
    iput-boolean v7, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->showRectBackground:Z

    .line 64
    iput-boolean v6, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->centerFillDefaultImage:Z

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->defaultImage:I

    .line 81
    iput-object p1, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->context:Landroid/content/Context;

    .line 82
    iput-object p4, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    .line 83
    iput-object p5, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->nameView:Landroid/widget/TextView;

    .line 84
    iput p7, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->height:I

    .line 85
    iput p6, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->width:I

    .line 86
    return-void
.end method

.method private setPictureView(Landroid/graphics/Bitmap;)Z
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v10, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 247
    new-instance v5, Lcom/google/glass/widget/ContactDrawable$Builder;

    iget-object v6, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/glass/widget/ContactDrawable$Builder;-><init>(Landroid/content/res/Resources;)V

    .line 248
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->getDisplayText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/glass/widget/ContactDrawable$Builder;->setName(Ljava/lang/String;)Lcom/google/glass/widget/ContactDrawable$Builder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->showRectBackground:Z

    .line 249
    invoke-virtual {v5, v6}, Lcom/google/glass/widget/ContactDrawable$Builder;->setShowRectBackground(Z)Lcom/google/glass/widget/ContactDrawable$Builder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->showDisplayText:Z

    .line 250
    invoke-virtual {v5, v6}, Lcom/google/glass/widget/ContactDrawable$Builder;->setShowDisplayText(Z)Lcom/google/glass/widget/ContactDrawable$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->contactDrawSpec:Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    .line 251
    invoke-virtual {v5, v6}, Lcom/google/glass/widget/ContactDrawable$Builder;->setDrawSpec(Lcom/google/glass/widget/ContactDrawable$DrawSpec;)Lcom/google/glass/widget/ContactDrawable$Builder;

    move-result-object v0

    .line 253
    .local v0, "builder":Lcom/google/glass/widget/ContactDrawable$Builder;
    if-eqz p1, :cond_0

    move v2, v3

    .line 255
    .local v2, "hasImage":Z
    :goto_0
    iget-object v5, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "hasImage=%b, showRoundedImage=%b, defaultImage=%b"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v4

    iget-boolean v8, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->showRoundedImage:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x2

    iget v9, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->defaultImage:I

    if-ne v9, v10, :cond_1

    .line 256
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v8

    .line 255
    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    if-eqz v2, :cond_3

    .line 259
    iget-boolean v3, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->showRoundedImage:Z

    if-eqz v3, :cond_2

    .line 261
    invoke-virtual {v0, p1}, Lcom/google/glass/widget/ContactDrawable$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/glass/widget/ContactDrawable$Builder;

    move-result-object v3

    .line 262
    invoke-virtual {v3}, Lcom/google/glass/widget/ContactDrawable$Builder;->build()Lcom/google/glass/widget/ContactDrawable;

    move-result-object v1

    .line 263
    .local v1, "drawable":Lcom/google/glass/widget/ContactDrawable;
    iget v3, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->width:I

    iget v5, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->height:I

    invoke-virtual {v1, v4, v4, v3, v5}, Lcom/google/glass/widget/ContactDrawable;->setBounds(IIII)V

    .line 264
    iget-object v3, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    .end local v1    # "drawable":Lcom/google/glass/widget/ContactDrawable;
    :goto_2
    invoke-virtual {p0, v4}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->cancel(Z)V

    .line 287
    :goto_3
    return v2

    .end local v2    # "hasImage":Z
    :cond_0
    move v2, v4

    .line 253
    goto :goto_0

    .restart local v2    # "hasImage":Z
    :cond_1
    move v3, v4

    .line 255
    goto :goto_1

    .line 266
    :cond_2
    iget-object v3, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 269
    :cond_3
    iget v3, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->defaultImage:I

    if-eq v3, v10, :cond_5

    .line 270
    iget-boolean v3, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->centerFillDefaultImage:Z

    if-eqz v3, :cond_4

    .line 271
    iget-object v3, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 276
    :goto_4
    iget-object v3, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    iget v4, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->defaultImage:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 273
    :cond_4
    iget-object v3, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_4

    .line 278
    :cond_5
    iget-object v3, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->defaultImageText:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 279
    iget-object v3, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->defaultImageText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/glass/widget/ContactDrawable$Builder;->setNameToDisplayText(Ljava/lang/String;)Lcom/google/glass/widget/ContactDrawable$Builder;

    .line 281
    :cond_6
    invoke-virtual {v0}, Lcom/google/glass/widget/ContactDrawable$Builder;->build()Lcom/google/glass/widget/ContactDrawable;

    move-result-object v1

    .line 282
    .restart local v1    # "drawable":Lcom/google/glass/widget/ContactDrawable;
    iget v3, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->width:I

    iget v5, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->height:I

    invoke-virtual {v1, v4, v4, v3, v5}, Lcom/google/glass/widget/ContactDrawable;->setBounds(IIII)V

    .line 283
    iget-object v3, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    const/4 v2, 0x1

    goto :goto_3
.end method


# virtual methods
.method protected bindContent(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->setPictureView(Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 243
    .local v0, "hasImage":Z
    iget-boolean v1, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->shouldFadeIn:Z

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->setViewVisibilities(ZZ)V

    .line 244
    return-void
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
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
    .line 218
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->onPreLoad()V

    .line 220
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "imageUrl":Ljava/lang/String;
    invoke-super {p0, p1}, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;->loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 222
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->getCacheId()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "cacheId":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 226
    sget-object v3, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->PROFILE_IMAGE_URL_CACHE:Landroid/util/LruCache;

    invoke-virtual {v3, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPreLoad()V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method protected prepareContent()V
    .locals 5

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->getCacheId()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "cacheId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    .line 93
    sget-object v3, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->PROFILE_IMAGE_URL_CACHE:Landroid/util/LruCache;

    invoke-virtual {v3, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->setImageUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    :cond_0
    iget-object v3, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->nameView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 97
    iget-object v3, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->nameView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->getDisplayText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->loadContentFromCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 102
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->setPictureView(Landroid/graphics/Bitmap;)Z

    move-result v2

    .line 103
    .local v2, "hasImage":Z
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->setViewVisibilities(ZZ)V

    .line 104
    return-void
.end method

.method public setContactDrawSpec(Lcom/google/glass/widget/ContactDrawable$DrawSpec;)V
    .locals 0
    .param p1, "contactDrawSpec"    # Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->contactDrawSpec:Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    .line 189
    return-void
.end method

.method public setDefaultImageResId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->defaultImage:I

    .line 154
    return-void
.end method

.method public setDefaultImageText(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultImageText"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->defaultImageText:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setLabelVisibility(Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;)V
    .locals 2
    .param p1, "labelVisibility"    # Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setLabelVisibility before the task is run"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_1
    iput-object p1, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->labelVisibility:Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;

    .line 147
    return-void
.end method

.method public setShouldFadeIn(Z)V
    .locals 0
    .param p1, "shouldFadeIn"    # Z

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->shouldFadeIn:Z

    .line 161
    return-void
.end method

.method public setShowDisplayText(Z)V
    .locals 0
    .param p1, "showDisplayText"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->showDisplayText:Z

    .line 175
    return-void
.end method

.method public setShowRectBackground(Z)V
    .locals 0
    .param p1, "showRectBackground"    # Z

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->showRectBackground:Z

    .line 182
    return-void
.end method

.method public setShowRoundedImage(Z)V
    .locals 0
    .param p1, "showRoundedImage"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->showRoundedImage:Z

    .line 168
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

    .line 114
    if-nez p1, :cond_0

    iget v0, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->defaultImage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p2}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->showView(Landroid/view/View;Z)V

    .line 121
    :goto_0
    sget-object v0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask$1;->$SwitchMap$com$google$glass$deferredcontent$PersonImageDownloadTask$LabelVisibility:[I

    iget-object v1, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->labelVisibility:Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;

    invoke-virtual {v1}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 136
    :goto_1
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p2, v2}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->hideView(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 123
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->nameView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p2, v2}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->hideView(Landroid/view/View;ZZ)V

    goto :goto_1

    .line 126
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->nameView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p2}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->showView(Landroid/view/View;Z)V

    goto :goto_1

    .line 129
    :pswitch_2
    if-eqz p1, :cond_2

    .line 130
    iget-object v0, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->nameView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p2, v2}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->hideView(Landroid/view/View;ZZ)V

    goto :goto_1

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->nameView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p2}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->showView(Landroid/view/View;Z)V

    goto :goto_1

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setcenterFillDefaultImage(Z)V
    .locals 0
    .param p1, "centerFillDefaultImage"    # Z

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;->centerFillDefaultImage:Z

    .line 196
    return-void
.end method
