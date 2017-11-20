.class Lcom/google/glass/html/PagedWebView$6;
.super Lcom/google/glass/html/ResourceLoadingWebViewClient;
.source "PagedWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/html/PagedWebView;->render(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZZLcom/google/glass/html/PagedWebView$OnPageCountChangeListener;Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/PagedWebView;

.field final synthetic val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field final synthetic val$processedHtml:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/html/PagedWebView;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/maps/MapHelper;Lcom/google/glass/mosaic/MosaicHelper;Lcom/google/glass/html/Thumbnailer;ZLjava/util/List;Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 11
    .param p1, "this$0"    # Lcom/google/glass/html/PagedWebView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p4, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p5, "mapHelper"    # Lcom/google/glass/maps/MapHelper;
    .param p6, "mosaicHelper"    # Lcom/google/glass/mosaic/MosaicHelper;
    .param p7, "thumbnailer"    # Lcom/google/glass/html/Thumbnailer;
    .param p8, "loadUncachedResources"    # Z
    .param p10, "resourceLoadedCallback"    # Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;

    .prologue
    .line 546
    .local p9, "resourceLoadTasks":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/deferredcontent/LoadingTask<*>;>;"
    iput-object p1, p0, Lcom/google/glass/html/PagedWebView$6;->this$0:Lcom/google/glass/html/PagedWebView;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/glass/html/PagedWebView$6;->val$processedHtml:Ljava/lang/String;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/glass/html/PagedWebView$6;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v1 .. v10}, Lcom/google/glass/html/ResourceLoadingWebViewClient;-><init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/maps/MapHelper;Lcom/google/glass/mosaic/MosaicHelper;Lcom/google/glass/html/Thumbnailer;ZLjava/util/List;Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 549
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 550
    invoke-super {p0, p1, p2}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$6;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v0}, Lcom/google/glass/html/PagedWebView;->access$200(Lcom/google/glass/html/PagedWebView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 573
    :goto_0
    return-void

    .line 555
    :cond_0
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/html/PagedWebView$6$1;

    invoke-direct {v1, p0}, Lcom/google/glass/html/PagedWebView$6$1;-><init>(Lcom/google/glass/html/PagedWebView$6;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
