.class Lcom/google/glass/html/ResourceLoadingWebViewClient$5;
.super Ljava/lang/Object;
.source "ResourceLoadingWebViewClient.java"

# interfaces
.implements Lcom/google/glass/deferredcontent/DeferredInputStream$Client;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/html/ResourceLoadingWebViewClient;->loadMosaic(Landroid/net/Uri;)Lcom/google/glass/deferredcontent/DeferredInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/html/ResourceLoadingWebViewClient;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    iput-object p2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load()Ljava/io/InputStream;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 421
    iget-object v5, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->val$uri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 423
    invoke-static {}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    iget-object v7, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->val$uri:Landroid/net/Uri;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1d

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Ignoring non-uniquified URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-interface {v5, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v6

    .line 451
    :goto_0
    return-object v5

    .line 427
    :cond_0
    iget-object v5, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-static {v5}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$1000(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/mosaic/MosaicHelper;

    move-result-object v5

    iget-object v7, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-static {v7}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$900(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->val$uri:Landroid/net/Uri;

    invoke-virtual {v5, v7, v8}, Lcom/google/glass/mosaic/MosaicHelper;->getImageLoader(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/net/Uri;)Lcom/google/glass/mosaic/ImageLoader;

    move-result-object v3

    .line 428
    .local v3, "imageLoader":Lcom/google/glass/mosaic/ImageLoader;
    if-nez v3, :cond_1

    move-object v5, v6

    .line 429
    goto :goto_0

    .line 432
    :cond_1
    iget-object v5, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-static {v5}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$1000(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/mosaic/MosaicHelper;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/glass/mosaic/MosaicHelper;->getCachedMosaicImage(Lcom/google/glass/mosaic/ImageLoader;)[B

    move-result-object v4

    .line 433
    .local v4, "mosaicImageData":[B
    if-eqz v4, :cond_2

    .line 434
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    .line 435
    :cond_2
    iget-object v5, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-static {v5}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$300(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 436
    iget-object v5, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-static {v5}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$1000(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/mosaic/MosaicHelper;

    move-result-object v5

    iget-object v7, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->val$uri:Landroid/net/Uri;

    invoke-virtual {v5, v7, v3}, Lcom/google/glass/mosaic/MosaicHelper;->renderMosaicToJpeg(Landroid/net/Uri;Lcom/google/glass/mosaic/ImageLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 437
    .local v2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<[B>;"
    if-eqz v2, :cond_3

    .line 439
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [B

    move-object v4, v0

    .line 440
    if-eqz v4, :cond_3

    .line 441
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 443
    :catch_0
    move-exception v1

    .line 444
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 445
    invoke-interface {v2, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<[B>;"
    :cond_3
    :goto_1
    move-object v5, v6

    .line 451
    goto :goto_0

    .line 446
    .restart local v2    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<[B>;"
    :catch_1
    move-exception v1

    .line 447
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-static {}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v7, "Mosaic rendering error, uri: %s"

    new-array v8, v9, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->val$uri:Landroid/net/Uri;

    aput-object v9, v8, v10

    invoke-interface {v5, v1, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onContentLoaded()V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-static {v0}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$600(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-interface {v0, v1}, Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;->onResourceLoaded(Lcom/google/glass/html/ResourceLoadingWebViewClient;)V

    .line 457
    return-void
.end method
