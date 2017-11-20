.class Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient$1;
.super Ljava/lang/Object;
.source "WebAnswerView.java"

# interfaces
.implements Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;-><init>(Lcom/google/glass/search/results/WebAnswerView;Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/maps/MapHelper;Lcom/google/glass/mosaic/MosaicHelper;Ljava/util/List;Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$this$0:Lcom/google/glass/search/results/WebAnswerView;

.field final synthetic val$userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/search/results/WebAnswerView;Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient$1;->val$this$0:Lcom/google/glass/search/results/WebAnswerView;

    iput-object p2, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient$1;->val$userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceLoaded(Lcom/google/glass/html/ResourceLoadingWebViewClient;)V
    .locals 7
    .param p1, "client"    # Lcom/google/glass/html/ResourceLoadingWebViewClient;

    .prologue
    const/4 v5, 0x0

    .line 651
    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient$1;->val$this$0:Lcom/google/glass/search/results/WebAnswerView;

    iget-object v2, v2, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    if-eqz v2, :cond_1

    .line 652
    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient$1;->val$this$0:Lcom/google/glass/search/results/WebAnswerView;

    invoke-static {v2}, Lcom/google/glass/search/results/WebAnswerView;->access$500(Lcom/google/glass/search/results/WebAnswerView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 655
    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient$1;->val$this$0:Lcom/google/glass/search/results/WebAnswerView;

    invoke-static {v2, v5}, Lcom/google/glass/search/results/WebAnswerView;->access$502(Lcom/google/glass/search/results/WebAnswerView;Z)Z

    .line 656
    invoke-virtual {p1, v5}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->setNetworkEnabledForUncachedResources(Z)V

    .line 659
    :cond_0
    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient$1;->val$this$0:Lcom/google/glass/search/results/WebAnswerView;

    iget-object v2, v2, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    const-string v3, "javascript:(function(){var imgs=document.getElementsByTagName(\'img\');for(var i = 0; i < imgs.length; i++) {  var img = imgs[i];  if (img.naturalWidth == 0) {    var tmp = img.src;    img.src = \'about:blank\';    img.src = tmp;}}})();"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 669
    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient$1;->val$this$0:Lcom/google/glass/search/results/WebAnswerView;

    iget-object v2, v2, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    instance-of v2, v2, Lcom/google/glass/search/results/ViewportHostingWebView;

    if-eqz v2, :cond_1

    .line 671
    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient$1;->val$this$0:Lcom/google/glass/search/results/WebAnswerView;

    iget-object v2, v2, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    check-cast v2, Lcom/google/glass/search/results/ViewportHostingWebView;

    iget-object v3, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient$1;->val$this$0:Lcom/google/glass/search/results/WebAnswerView;

    invoke-static {v3}, Lcom/google/glass/search/results/WebAnswerView;->access$600(Lcom/google/glass/search/results/WebAnswerView;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/search/results/ViewportHostingWebView;->drawViewport(IZ)V

    .line 675
    :cond_1
    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient$1;->val$this$0:Lcom/google/glass/search/results/WebAnswerView;

    invoke-static {v2}, Lcom/google/glass/search/results/WebAnswerView;->access$700(Lcom/google/glass/search/results/WebAnswerView;)I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 676
    .local v1, "pendingLoads":I
    const-string v2, "loads_pending"

    .line 677
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    .line 676
    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTupleBuilder(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 678
    .local v0, "eventTuple":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient$1;->val$this$0:Lcom/google/glass/search/results/WebAnswerView;

    invoke-static {v2}, Lcom/google/glass/search/results/WebAnswerView;->access$800(Lcom/google/glass/search/results/WebAnswerView;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 679
    const-string v2, "time_from_eos"

    .line 681
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient$1;->val$this$0:Lcom/google/glass/search/results/WebAnswerView;

    invoke-static {v5}, Lcom/google/glass/search/results/WebAnswerView;->access$800(Lcom/google/glass/search/results/WebAnswerView;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 679
    invoke-static {v0, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 683
    :cond_2
    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient$1;->val$userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_RESOURCE_LOADED:Lcom/google/glass/userevent/UserEventAction;

    .line 684
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 683
    invoke-virtual {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 685
    return-void
.end method
