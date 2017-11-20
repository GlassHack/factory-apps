.class public abstract Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;
.super Lcom/google/glass/deferredcontent/LoadingTask;
.source "ImageProxyBitmapLoadingTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/deferredcontent/LoadingTask",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private final downloadTask:Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Ljava/lang/String;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p3, "imageUrl"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "cropType"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/glass/deferredcontent/LoadingTask;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p2, p0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 37
    new-instance v0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$1;-><init>(Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;Landroid/content/Context;Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;->downloadTask:Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;

    .line 41
    return-void
.end method


# virtual methods
.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;->downloadTask:Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;

    invoke-virtual {v0}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUserEventTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "ipb"

    return-object v0
.end method

.method public hasImageUrl()Z
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "isCancelled"    # Lcom/google/glass/util/Condition;

    .prologue
    .line 50
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;->downloadTask:Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;

    invoke-virtual {v1, p1}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 52
    const/4 v1, 0x0

    .line 54
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lcom/google/glass/util/CachedBitmapFactory;->decodeFile(Ljava/lang/String;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;->loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public loadContentFromCache()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v2, p0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;->downloadTask:Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;

    invoke-virtual {v2}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->loadContentFromCache()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3, v1}, Lcom/google/glass/util/CachedBitmapFactory;->decodeFile(Ljava/lang/String;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public setImageDimensions(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;->downloadTask:Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->setImageDimensions(II)V

    .line 87
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;->downloadTask:Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;

    invoke-virtual {v0, p1}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->setImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
