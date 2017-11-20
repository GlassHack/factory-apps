.class Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;
.super Lcom/google/glass/deferredcontent/LoadingTask;
.source "MusicItemViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BundleCoverArtworkLoadingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/deferredcontent/LoadingTask",
        "<",
        "Ljava/util/List",
        "<[B>;>;"
    }
.end annotation


# instance fields
.field private final attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private final bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private final mosaicView:Lcom/google/glass/mosaic/MosaicView;

.field final synthetic this$0:Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;


# direct methods
.method public constructor <init>(Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;Landroid/content/Context;Ljava/util/List;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/mosaic/MosaicView;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p5, "mosaicView"    # Lcom/google/glass/mosaic/MosaicView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;",
            ">;",
            "Lcom/google/glass/util/CachedBitmapFactory;",
            "Lcom/google/glass/mosaic/MosaicView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 413
    .local p3, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 461
    .local p1, "byteList":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-nez p1, :cond_0

    .line 462
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "No album art bytes to load"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    :goto_0
    return-void

    .line 466
    :cond_0
    sget v1, Lcom/google/glass/common/R$drawable;->ic_album_art:I

    iget-object v2, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;->mosaicView:Lcom/google/glass/mosaic/MosaicView;

    .line 467
    invoke-virtual {v2}, Lcom/google/glass/mosaic/MosaicView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;->mosaicView:Lcom/google/glass/mosaic/MosaicView;

    invoke-virtual {v3}, Lcom/google/glass/mosaic/MosaicView;->getHeight()I

    move-result v3

    .line 466
    invoke-static {p1, v1, v2, v3}, Lcom/google/glass/mosaic/ImageLoaders;->forByteImages(Ljava/util/List;III)Lcom/google/glass/mosaic/ImageLoader;

    move-result-object v0

    .line 468
    .local v0, "loader":Lcom/google/glass/mosaic/ImageLoader;
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    iget-object v2, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;->mosaicView:Lcom/google/glass/mosaic/MosaicView;

    iget-object v3, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;->mosaicView:Lcom/google/glass/mosaic/MosaicView;

    iget-object v4, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 469
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$100()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Lcom/google/glass/mosaic/MosaicView;->loadImages(Lcom/google/glass/mosaic/ImageLoader;Lcom/google/glass/util/CachedBitmapFactory;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v3

    .line 468
    invoke-virtual {v1, v2, v3}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->loadForScrollItemSubview(Landroid/view/View;Ljava/util/List;)V

    .line 470
    iget-object v1, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;->mosaicView:Lcom/google/glass/mosaic/MosaicView;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;->showView(Landroid/view/View;Z)V

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
    .locals 14
    .param p1, "isCancelled"    # Lcom/google/glass/util/Condition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/util/Condition;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v13, 0x0

    const/4 v10, 0x1

    .line 431
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 432
    .local v5, "start":J
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 433
    .local v1, "byteList":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v3, Lcom/google/glass/util/CachedFilesManager$ByteArrayLoader;

    invoke-direct {v3}, Lcom/google/glass/util/CachedFilesManager$ByteArrayLoader;-><init>()V

    .line 435
    .local v3, "loader":Lcom/google/glass/util/CachedFilesManager$Loader;, "Lcom/google/glass/util/CachedFilesManager$Loader<[B>;"
    :try_start_0
    iget-object v7, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;->attachments:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 436
    .local v0, "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    iget-object v8, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    const/4 v9, 0x1

    invoke-virtual {v8, v0, v9}, Lcom/google/glass/util/CachedBitmapFactory;->getCachedAttachmentPath(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Z)Ljava/lang/String;

    move-result-object v4

    .line 437
    .local v4, "path":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 438
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v8

    invoke-virtual {v8, v4, v3}, Lcom/google/glass/util/CachedFilesManager;->load(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 439
    .local v2, "bytes":[B
    new-instance v8, Lcom/google/glass/util/CachedFilesManager$ByteArrayLoader;

    invoke-direct {v8}, Lcom/google/glass/util/CachedFilesManager$ByteArrayLoader;-><init>()V

    .line 440
    if-eqz v2, :cond_0

    .line 441
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-lt v8, v11, :cond_0

    .line 449
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    const-string v8, "Loading album art took %dms"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    .end local v0    # "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v1    # "byteList":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v2    # "bytes":[B
    .end local v4    # "path":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 449
    .restart local v1    # "byteList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_2
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    const-string v8, "Loading album art took %dms"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 453
    const/4 v1, 0x0

    goto :goto_0

    .line 449
    :catchall_0
    move-exception v7

    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v8

    const-string v9, "Loading album art took %dms"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v5

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v7
.end method

.method protected prepareContent(F)V
    .locals 0
    .param p1, "absScrollVelocity"    # F

    .prologue
    .line 427
    return-void
.end method
