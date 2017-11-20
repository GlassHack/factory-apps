.class Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;
.super Lcom/google/glass/html/ResourceLoadingWebViewClient;
.source "WebAnswerView.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/search/results/WebAnswerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebAnswerViewClient"
.end annotation


# static fields
.field private static final TEL_SCHEME:Ljava/lang/String; = "tel"


# instance fields
.field final context:Landroid/content/Context;

.field final jsEnvironment:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

.field final synthetic this$0:Lcom/google/glass/search/results/WebAnswerView;


# direct methods
.method constructor <init>(Lcom/google/glass/search/results/WebAnswerView;Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/maps/MapHelper;Lcom/google/glass/mosaic/MosaicHelper;Ljava/util/List;Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)V
    .locals 11
    .param p1, "this$0"    # Lcom/google/glass/search/results/WebAnswerView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p4, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p5, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p6, "mapHelper"    # Lcom/google/glass/maps/MapHelper;
    .param p7, "mosaicHelper"    # Lcom/google/glass/mosaic/MosaicHelper;
    .param p9, "jsEnvironment"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/glass/userevent/UserEventHelper;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            "Lcom/google/glass/util/CachedBitmapFactory;",
            "Lcom/google/glass/maps/MapHelper;",
            "Lcom/google/glass/mosaic/MosaicHelper;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/deferredcontent/LoadingTask",
            "<*>;>;",
            "Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 642
    .local p8, "resourceLoadTasks":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/deferredcontent/LoadingTask<*>;>;"
    iput-object p1, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;->this$0:Lcom/google/glass/search/results/WebAnswerView;

    .line 643
    new-instance v7, Lcom/google/glass/html/Thumbnailer;

    invoke-direct {v7}, Lcom/google/glass/html/Thumbnailer;-><init>()V

    const/4 v8, 0x1

    new-instance v10, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient$1;

    invoke-direct {v10, p1, p3}, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient$1;-><init>(Lcom/google/glass/search/results/WebAnswerView;Lcom/google/glass/userevent/UserEventHelper;)V

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/google/glass/html/ResourceLoadingWebViewClient;-><init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/maps/MapHelper;Lcom/google/glass/mosaic/MosaicHelper;Lcom/google/glass/html/Thumbnailer;ZLjava/util/List;Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;)V

    .line 688
    iput-object p2, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;->context:Landroid/content/Context;

    .line 689
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;->jsEnvironment:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    .line 690
    return-void
.end method

.method private handleTelUri(Landroid/net/Uri;)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x0

    .line 758
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 759
    .local v3, "phoneNumber":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/glass/app/GlassActivity;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    .line 760
    .local v0, "activity":Lcom/google/glass/app/GlassActivity;
    new-instance v4, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    new-instance v5, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v5, v0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/glass/voice/VoiceAnnotationHelper;

    invoke-direct {v7, v0}, Lcom/google/glass/voice/VoiceAnnotationHelper;-><init>(Landroid/app/Activity;)V

    invoke-direct {v4, v0, v5, v6, v7}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/util/IconProvider;Lcom/google/glass/voice/VoiceAnnotationHelper;)V

    .line 762
    .local v4, "selectionHandler":Lcom/google/glass/timeline/TimelineMenuSelectionHandler;
    iget-object v5, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;->this$0:Lcom/google/glass/search/results/WebAnswerView;

    iget-object v6, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;->this$0:Lcom/google/glass/search/results/WebAnswerView;

    invoke-static {v6}, Lcom/google/glass/search/results/WebAnswerView;->access$1100(Lcom/google/glass/search/results/WebAnswerView;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/glass/search/results/WebAnswerView;->access$1200(Lcom/google/glass/search/results/WebAnswerView;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 763
    invoke-virtual {v4, v3}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onVoiceCall(Ljava/lang/String;)Z

    .line 786
    :goto_0
    return-void

    .line 765
    :cond_0
    iget-object v5, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;->this$0:Lcom/google/glass/search/results/WebAnswerView;

    invoke-static {v5}, Lcom/google/glass/search/results/WebAnswerView;->access$1100(Lcom/google/glass/search/results/WebAnswerView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x1e

    if-gt v5, v6, :cond_1

    iget-object v5, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;->this$0:Lcom/google/glass/search/results/WebAnswerView;

    .line 766
    invoke-static {v5}, Lcom/google/glass/search/results/WebAnswerView;->access$1100(Lcom/google/glass/search/results/WebAnswerView;)Ljava/lang/String;

    move-result-object v2

    .line 767
    .local v2, "displayBaseUrl":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;->context:Landroid/content/Context;

    sget v6, Lcom/google/glass/search/R$string;->request_phone_permission:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 771
    .local v1, "confirmMessage":Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "OK"

    new-instance v7, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient$3;

    invoke-direct {v7, p0, v4, v3}, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient$3;-><init>(Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Ljava/lang/String;)V

    .line 772
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "Cancel"

    new-instance v7, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient$2;

    invoke-direct {v7, p0}, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient$2;-><init>(Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;)V

    .line 778
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 784
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 766
    .end local v1    # "confirmMessage":Ljava/lang/String;
    .end local v2    # "displayBaseUrl":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;->this$0:Lcom/google/glass/search/results/WebAnswerView;

    invoke-static {v5}, Lcom/google/glass/search/results/WebAnswerView;->access$1100(Lcom/google/glass/search/results/WebAnswerView;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1c

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u2026"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, -0x1

    .line 717
    instance-of v1, p1, Lcom/google/glass/search/results/ViewportHostingWebView;

    if-eqz v1, :cond_0

    .line 719
    check-cast p1, Lcom/google/glass/search/results/ViewportHostingWebView;

    .end local p1    # "view":Landroid/webkit/WebView;
    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;->this$0:Lcom/google/glass/search/results/WebAnswerView;

    invoke-static {v1}, Lcom/google/glass/search/results/WebAnswerView;->access$600(Lcom/google/glass/search/results/WebAnswerView;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/search/results/ViewportHostingWebView;->drawViewport(IZ)V

    .line 722
    :cond_0
    const-string v1, "loads_pending"

    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;->this$0:Lcom/google/glass/search/results/WebAnswerView;

    .line 723
    invoke-static {v2}, Lcom/google/glass/search/results/WebAnswerView;->access$700(Lcom/google/glass/search/results/WebAnswerView;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 722
    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTupleBuilder(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 724
    .local v0, "eventTuple":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;->this$0:Lcom/google/glass/search/results/WebAnswerView;

    invoke-static {v1}, Lcom/google/glass/search/results/WebAnswerView;->access$800(Lcom/google/glass/search/results/WebAnswerView;)J

    move-result-wide v1

    cmp-long v1, v1, v6

    if-eqz v1, :cond_1

    .line 725
    const-string v1, "time_from_eos"

    .line 727
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;->this$0:Lcom/google/glass/search/results/WebAnswerView;

    invoke-static {v4}, Lcom/google/glass/search/results/WebAnswerView;->access$800(Lcom/google/glass/search/results/WebAnswerView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 725
    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 729
    :cond_1
    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;->this$0:Lcom/google/glass/search/results/WebAnswerView;

    invoke-static {v1}, Lcom/google/glass/search/results/WebAnswerView;->access$900(Lcom/google/glass/search/results/WebAnswerView;)J

    move-result-wide v1

    cmp-long v1, v1, v6

    if-eqz v1, :cond_2

    .line 730
    const-string v1, "time"

    .line 732
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;->this$0:Lcom/google/glass/search/results/WebAnswerView;

    invoke-static {v4}, Lcom/google/glass/search/results/WebAnswerView;->access$900(Lcom/google/glass/search/results/WebAnswerView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 730
    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 734
    :cond_2
    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;->this$0:Lcom/google/glass/search/results/WebAnswerView;

    invoke-static {v1}, Lcom/google/glass/search/results/WebAnswerView;->access$1000(Lcom/google/glass/search/results/WebAnswerView;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_PAGE_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 735
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 694
    const-string v0, ""

    .line 695
    .local v0, "eventTuple":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;->this$0:Lcom/google/glass/search/results/WebAnswerView;

    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/glass/search/results/WebAnswerView;->access$902(Lcom/google/glass/search/results/WebAnswerView;J)J

    .line 696
    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;->this$0:Lcom/google/glass/search/results/WebAnswerView;

    invoke-static {v1}, Lcom/google/glass/search/results/WebAnswerView;->access$800(Lcom/google/glass/search/results/WebAnswerView;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 697
    const-string v1, "time_from_eos"

    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;->this$0:Lcom/google/glass/search/results/WebAnswerView;

    .line 698
    invoke-static {v2}, Lcom/google/glass/search/results/WebAnswerView;->access$900(Lcom/google/glass/search/results/WebAnswerView;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;->this$0:Lcom/google/glass/search/results/WebAnswerView;

    invoke-static {v4}, Lcom/google/glass/search/results/WebAnswerView;->access$800(Lcom/google/glass/search/results/WebAnswerView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 697
    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 700
    :cond_0
    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;->this$0:Lcom/google/glass/search/results/WebAnswerView;

    invoke-static {v1}, Lcom/google/glass/search/results/WebAnswerView;->access$1000(Lcom/google/glass/search/results/WebAnswerView;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_PAGE_STARTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 701
    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .prologue
    .line 705
    invoke-super {p0, p1, p2, p3}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    .line 706
    instance-of v1, p1, Lcom/google/glass/search/results/SearchPagedWebView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 707
    check-cast v0, Lcom/google/glass/search/results/SearchPagedWebView;

    .line 708
    .local v0, "webView":Lcom/google/glass/search/results/SearchPagedWebView;
    invoke-virtual {v0}, Lcom/google/glass/search/results/SearchPagedWebView;->updateWebViewPosition()V

    .line 710
    .end local v0    # "webView":Lcom/google/glass/search/results/SearchPagedWebView;
    :cond_0
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 794
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 795
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 796
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 797
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 802
    .local v0, "scheme":Ljava/lang/String;
    const-string v2, "http"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 803
    :cond_0
    const/4 v2, 0x0

    .line 806
    .end local v0    # "scheme":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v2

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "urlStr"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 743
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 754
    :cond_0
    :goto_0
    return v3

    .line 746
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 747
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "scheme":Ljava/lang/String;
    const-string v2, "tel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 749
    invoke-direct {p0, v1}, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;->handleTelUri(Landroid/net/Uri;)V

    goto :goto_0
.end method
