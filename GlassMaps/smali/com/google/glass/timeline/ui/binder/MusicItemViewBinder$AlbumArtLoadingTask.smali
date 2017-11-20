.class Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$AlbumArtLoadingTask;
.super Lcom/google/glass/deferredcontent/LoadingTask;
.source "SourceFile"


# instance fields
.field private final attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

.field private final bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private final mosaicView:Lcom/google/glass/mosaic/MosaicView;

.field final synthetic this$0:Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;


# direct methods
.method public constructor <init>(Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/mosaic/MosaicView;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$AlbumArtLoadingTask;->this$0:Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;

    .line 359
    invoke-direct {p0, p2}, Lcom/google/glass/deferredcontent/LoadingTask;-><init>(Landroid/content/Context;)V

    .line 361
    iput-object p3, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$AlbumArtLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 362
    iput-object p5, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$AlbumArtLoadingTask;->mosaicView:Lcom/google/glass/mosaic/MosaicView;

    .line 363
    iput-object p4, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$AlbumArtLoadingTask;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 364
    return-void
.end method


# virtual methods
.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 352
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$AlbumArtLoadingTask;->bindContent([B)V

    return-void
.end method

.method protected bindContent([B)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 393
    if-nez p1, :cond_0

    .line 394
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "No album art bitmap"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    :goto_0
    return-void

    .line 397
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 398
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    sget v1, Lcom/google/glass/common/R$drawable;->ic_album_art:I

    iget-object v2, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$AlbumArtLoadingTask;->mosaicView:Lcom/google/glass/mosaic/MosaicView;

    .line 400
    invoke-virtual {v2}, Lcom/google/glass/mosaic/MosaicView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$AlbumArtLoadingTask;->mosaicView:Lcom/google/glass/mosaic/MosaicView;

    invoke-virtual {v3}, Lcom/google/glass/mosaic/MosaicView;->getHeight()I

    move-result v3

    .line 399
    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/mosaic/ImageLoaders;->forByteImages(Ljava/util/List;III)Lcom/google/glass/mosaic/ImageLoader;

    move-result-object v1

    .line 401
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    iget-object v2, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$AlbumArtLoadingTask;->mosaicView:Lcom/google/glass/mosaic/MosaicView;

    iget-object v3, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$AlbumArtLoadingTask;->mosaicView:Lcom/google/glass/mosaic/MosaicView;

    iget-object v4, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$AlbumArtLoadingTask;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 402
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$100()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5}, Lcom/google/glass/mosaic/MosaicView;->loadImages(Lcom/google/glass/mosaic/ImageLoader;Lcom/google/glass/util/CachedBitmapFactory;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v1

    .line 401
    invoke-virtual {v0, v2, v1}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->loadForScrollItemSubview(Landroid/view/View;Ljava/util/List;)V

    .line 403
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$AlbumArtLoadingTask;->mosaicView:Lcom/google/glass/mosaic/MosaicView;

    invoke-virtual {p0, v0, v6}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$AlbumArtLoadingTask;->showView(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method protected getUserEventTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    const-string v0, "sp"

    return-object v0
.end method

.method protected bridge synthetic loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 352
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$AlbumArtLoadingTask;->loadContent(Lcom/google/glass/util/Condition;)[B

    move-result-object v0

    return-object v0
.end method

.method protected loadContent(Lcom/google/glass/util/Condition;)[B
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 377
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$AlbumArtLoadingTask;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v3, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$AlbumArtLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/google/glass/util/CachedBitmapFactory;->getCachedAttachmentPath(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Z)Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 381
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v3

    new-instance v4, Lcom/google/glass/util/CachedFilesManager$ByteArrayLoader;

    invoke-direct {v4}, Lcom/google/glass/util/CachedFilesManager$ByteArrayLoader;-><init>()V

    invoke-virtual {v3, v0, v4}, Lcom/google/glass/util/CachedFilesManager;->load(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Loading album art took %dms"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v1, v6, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0

    .line 385
    :cond_0
    const/4 v0, 0x0

    .line 387
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Loading album art took %dms"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v1, v6, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Loading album art took %dms"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v1, v6, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method protected prepareContent(F)V
    .locals 0

    .prologue
    .line 373
    return-void
.end method
