.class public Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$RemoteViewsImageProxyBitmapLoadingTask;
.super Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;
.source "ImageProxyBitmapLoadingTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteViewsImageProxyBitmapLoadingTask"
.end annotation


# instance fields
.field private final imageViewId:I

.field private liveCard:Lcom/google/android/glass/timeline/LiveCard;

.field private final remoteViews:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILandroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Ljava/lang/String;III)V
    .locals 7
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "imageViewId"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p5, "imageUrl"    # Ljava/lang/String;
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "cropType"    # I

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move v5, p7

    move v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Ljava/lang/String;III)V

    .line 132
    iput-object p1, p0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$RemoteViewsImageProxyBitmapLoadingTask;->remoteViews:Landroid/widget/RemoteViews;

    .line 133
    iput p2, p0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$RemoteViewsImageProxyBitmapLoadingTask;->imageViewId:I

    .line 134
    return-void
.end method


# virtual methods
.method protected bindContent(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 143
    if-eqz p1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$RemoteViewsImageProxyBitmapLoadingTask;->remoteViews:Landroid/widget/RemoteViews;

    iget v1, p0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$RemoteViewsImageProxyBitmapLoadingTask;->imageViewId:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 145
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$RemoteViewsImageProxyBitmapLoadingTask;->remoteViews:Landroid/widget/RemoteViews;

    iget v1, p0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$RemoteViewsImageProxyBitmapLoadingTask;->imageViewId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 146
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$RemoteViewsImageProxyBitmapLoadingTask;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$RemoteViewsImageProxyBitmapLoadingTask;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$RemoteViewsImageProxyBitmapLoadingTask;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Lcom/google/android/glass/timeline/LiveCard;->setViews(Landroid/widget/RemoteViews;)Lcom/google/android/glass/timeline/LiveCard;

    .line 150
    :cond_0
    return-void
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 122
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$RemoteViewsImageProxyBitmapLoadingTask;->bindContent(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected bridge synthetic loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;->loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected prepareContent(F)V
    .locals 3
    .param p1, "absScrollVelocity"    # F

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$RemoteViewsImageProxyBitmapLoadingTask;->remoteViews:Landroid/widget/RemoteViews;

    iget v1, p0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$RemoteViewsImageProxyBitmapLoadingTask;->imageViewId:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 139
    return-void
.end method

.method public setLiveCardForUpdate(Lcom/google/android/glass/timeline/LiveCard;)V
    .locals 0
    .param p1, "liveCard"    # Lcom/google/android/glass/timeline/LiveCard;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$RemoteViewsImageProxyBitmapLoadingTask;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    .line 154
    return-void
.end method
