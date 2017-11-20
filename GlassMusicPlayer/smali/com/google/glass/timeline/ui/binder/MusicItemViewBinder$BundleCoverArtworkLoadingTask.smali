.class Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;
.super Lcom/google/glass/deferredcontent/LoadingTask;
.source "SourceFile"


# instance fields
.field private final attachments:Ljava/util/List;

.field private final bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private final mosaicView:Lcom/google/glass/mosaic/MosaicView;

.field final synthetic this$0:Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;


# direct methods
.method public constructor <init>(Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;Landroid/content/Context;Ljava/util/List;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/mosaic/MosaicView;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;->this$0:Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;

    .line 414
    invoke-direct {p0, p2}, Lcom/google/glass/deferredcontent/LoadingTask;-><init>(Landroid/content/Context;)V

    .line 415
    iput-object p3, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;->attachments:Ljava/util/List;

    .line 416
    iput-object p4, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 417
    iput-object p5, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;->mosaicView:Lcom/google/glass/mosaic/MosaicView;

    .line 418
    return-void
.end method


# virtual methods
.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 407
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;->bindContent(Ljava/util/List;)V

    return-void
.end method

.method protected bindContent(Ljava/util/List;)V
    .locals 6

    .prologue
    .line 461
    if-nez p1, :cond_0

    .line 462
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "No album art bytes to load"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    :goto_0
    return-void

    .line 466
    :cond_0
    sget v0, Lcom/google/glass/common/R$drawable;->ic_album_art:I

    iget-object v1, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;->mosaicView:Lcom/google/glass/mosaic/MosaicView;

    .line 467
    invoke-virtual {v1}, Lcom/google/glass/mosaic/MosaicView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;->mosaicView:Lcom/google/glass/mosaic/MosaicView;

    invoke-virtual {v2}, Lcom/google/glass/mosaic/MosaicView;->getHeight()I

    move-result v2

    .line 466
    invoke-static {p1, v0, v1, v2}, Lcom/google/glass/mosaic/ImageLoaders;->forByteImages(Ljava/util/List;III)Lcom/google/glass/mosaic/ImageLoader;

    move-result-object v1

    .line 468
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    iget-object v2, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;->mosaicView:Lcom/google/glass/mosaic/MosaicView;

    iget-object v3, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;->mosaicView:Lcom/google/glass/mosaic/MosaicView;

    iget-object v4, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 469
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$100()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5}, Lcom/google/glass/mosaic/MosaicView;->loadImages(Lcom/google/glass/mosaic/ImageLoader;Lcom/google/glass/util/CachedBitmapFactory;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v1

    .line 468
    invoke-virtual {v0, v2, v1}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->loadForScrollItemSubview(Landroid/view/View;Ljava/util/List;)V

    .line 470
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;->mosaicView:Lcom/google/glass/mosaic/MosaicView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;->showView(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method protected getUserEventTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    const-string v0, "ia"

    return-object v0
.end method

.method protected bridge synthetic loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;->loadContent(Lcom/google/glass/util/Condition;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected loadContent(Lcom/google/glass/util/Condition;)Ljava/util/List;
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 431
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 432
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 433
    new-instance v4, Lcom/google/glass/util/CachedFilesManager$ByteArrayLoader;

    invoke-direct {v4}, Lcom/google/glass/util/CachedFilesManager$ByteArrayLoader;-><init>()V

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;->attachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 436
    iget-object v6, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    const/4 v7, 0x1

    invoke-virtual {v6, v0, v7}, Lcom/google/glass/util/CachedBitmapFactory;->getCachedAttachmentPath(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Z)Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 438
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v6

    invoke-virtual {v6, v0, v4}, Lcom/google/glass/util/CachedFilesManager;->load(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 439
    new-instance v6, Lcom/google/glass/util/CachedFilesManager$ByteArrayLoader;

    invoke-direct {v6}, Lcom/google/glass/util/CachedFilesManager$ByteArrayLoader;-><init>()V

    .line 440
    if-eqz v0, :cond_0

    .line 441
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lt v0, v10, :cond_0

    .line 449
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v4, "Loading album art took %dms"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v9

    invoke-interface {v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 455
    :goto_0
    return-object v0

    .line 449
    :cond_1
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v4, "Loading album art took %dms"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v9

    invoke-interface {v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 453
    const/4 v0, 0x0

    goto :goto_0

    .line 449
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v4, "Loading album art took %dms"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v9

    invoke-interface {v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2
    move-object v0, v1

    .line 455
    goto :goto_0
.end method

.method protected prepareContent(F)V
    .locals 0

    .prologue
    .line 427
    return-void
.end method
