.class Lcom/google/glass/html/ResourceLoadingWebViewClient$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/deferredcontent/DeferredInputStream$Client;


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    iput-object p2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load()Ljava/io/InputStream;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 421
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    invoke-static {}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->val$uri:Landroid/net/Uri;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1d

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Ignoring non-uniquified URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 451
    :goto_0
    return-object v0

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-static {v0}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$1000(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/mosaic/MosaicHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-static {v2}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$900(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Lcom/google/glass/mosaic/MosaicHelper;->getImageLoader(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/net/Uri;)Lcom/google/glass/mosaic/ImageLoader;

    move-result-object v0

    .line 428
    if-nez v0, :cond_1

    move-object v0, v1

    .line 429
    goto :goto_0

    .line 432
    :cond_1
    iget-object v2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-static {v2}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$1000(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/mosaic/MosaicHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/glass/mosaic/MosaicHelper;->getCachedMosaicImage(Lcom/google/glass/mosaic/ImageLoader;)[B

    move-result-object v2

    .line 433
    if-eqz v2, :cond_2

    .line 434
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    .line 435
    :cond_2
    iget-object v2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-static {v2}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$300(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 436
    iget-object v2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-static {v2}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$1000(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/mosaic/MosaicHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->val$uri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Lcom/google/glass/mosaic/MosaicHelper;->renderMosaicToJpeg(Landroid/net/Uri;Lcom/google/glass/mosaic/ImageLoader;)Lcom/google/common/util/concurrent/o;

    move-result-object v3

    .line 437
    if-eqz v3, :cond_3

    .line 439
    :try_start_0
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 440
    if-eqz v0, :cond_3

    .line 441
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v2

    goto :goto_0

    .line 444
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 445
    invoke-interface {v3, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_3
    :goto_1
    move-object v0, v1

    .line 451
    goto :goto_0

    .line 446
    :catch_1
    move-exception v0

    .line 447
    invoke-static {}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Mosaic rendering error, uri: %s"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->val$uri:Landroid/net/Uri;

    aput-object v5, v4, v6

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

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
