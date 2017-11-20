.class Lcom/google/glass/html/ResourceLoadingWebViewClient$4;
.super Ljava/lang/Object;
.source "ResourceLoadingWebViewClient.java"

# interfaces
.implements Lcom/google/glass/deferredcontent/DeferredInputStream$Client;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/html/ResourceLoadingWebViewClient;->loadMap(Ljava/lang/String;)Lcom/google/glass/deferredcontent/DeferredInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/html/ResourceLoadingWebViewClient;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$4;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    iput-object p2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$4;->val$uri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load()Ljava/io/InputStream;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 385
    new-instance v4, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    invoke-direct {v4}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;-><init>()V

    .line 386
    .local v4, "request":Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    iget-object v5, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$4;->val$uri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->setUri(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    .line 387
    iget-object v5, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$4;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-static {v5}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$800(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/maps/MapHelper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/glass/maps/MapHelper;->getCachedMapPng(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)[B

    move-result-object v3

    .line 388
    .local v3, "mapPngData":[B
    if-eqz v3, :cond_0

    .line 389
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 406
    :goto_0
    return-object v5

    .line 390
    :cond_0
    iget-object v5, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$4;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-static {v5}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$300(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 391
    iget-object v5, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$4;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-static {v5}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$800(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/maps/MapHelper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/glass/maps/MapHelper;->renderMapToPng(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 392
    .local v2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<[B>;"
    if-eqz v2, :cond_1

    .line 394
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [B

    move-object v3, v0

    .line 395
    if-eqz v3, :cond_1

    .line 396
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 398
    :catch_0
    move-exception v1

    .line 399
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 400
    invoke-interface {v2, v7}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 406
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<[B>;"
    :cond_1
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 401
    .restart local v2    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<[B>;"
    :catch_1
    move-exception v1

    .line 402
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-static {}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Map rendering error, uri: %s"

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$4;->val$uri:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-interface {v5, v1, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onContentLoaded()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$4;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-static {v0}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$600(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$4;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-interface {v0, v1}, Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;->onResourceLoaded(Lcom/google/glass/html/ResourceLoadingWebViewClient;)V

    .line 412
    return-void
.end method
