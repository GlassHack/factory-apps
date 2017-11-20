.class Lcom/google/glass/browser/WebBrowserActivity$1;
.super Landroid/webkit/WebViewClient;
.source "WebBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/browser/WebBrowserActivity;->onCreateInternal(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/browser/WebBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/browser/WebBrowserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/browser/WebBrowserActivity;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 11
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x8

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 410
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 412
    iget-object v4, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v4}, Lcom/google/glass/browser/WebBrowserActivity;->access$100(Lcom/google/glass/browser/WebBrowserActivity;)Lcom/google/glass/time/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 413
    .local v1, "now":J
    iget-object v4, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    iput-boolean v7, v4, Lcom/google/glass/browser/WebBrowserActivity;->loaded:Z

    .line 414
    sget-object v4, Lcom/google/glass/util/Labs$Feature;->ATC_OK:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v4}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 415
    iget-object v4, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    iget-object v4, v4, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v4}, Lcom/google/glass/browser/WebBrowserWebView;->canGoBack()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    iget-object v4, v4, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v4}, Lcom/google/glass/browser/WebBrowserWebView;->canGoBack()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 416
    :cond_0
    iget-object v4, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    iget-object v5, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v5}, Lcom/google/glass/browser/WebBrowserActivity;->access$200(Lcom/google/glass/browser/WebBrowserActivity;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v6}, Lcom/google/glass/browser/WebBrowserActivity;->access$300(Lcom/google/glass/browser/WebBrowserActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/glass/browser/WebBrowserActivity;->listenForGuardPhrase(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 421
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v4}, Lcom/google/glass/browser/WebBrowserActivity;->access$400(Lcom/google/glass/browser/WebBrowserActivity;)Lcom/google/glass/touchpad/ClutchDetector;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    iget-object v5, v5, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v5}, Lcom/google/glass/browser/WebBrowserWebView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/google/glass/touchpad/ClutchDetector;->start(F)V

    .line 425
    iget-object v4, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v4}, Lcom/google/glass/browser/WebBrowserActivity;->access$500(Lcom/google/glass/browser/WebBrowserActivity;)Lcom/google/glass/browser/ClutchHelper;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/google/glass/browser/ClutchHelper;->setClutchModeAllowed(Z)V

    .line 426
    iget-object v4, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v4}, Lcom/google/glass/browser/WebBrowserActivity;->access$600(Lcom/google/glass/browser/WebBrowserActivity;)Lcom/google/glass/widget/SliderView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/widget/SliderView;->startIndeterminate()V

    .line 427
    iget-object v4, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v4}, Lcom/google/glass/browser/WebBrowserActivity;->access$700(Lcom/google/glass/browser/WebBrowserActivity;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0x7d0

    invoke-virtual {v4, v8, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 433
    iget-object v4, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v4}, Lcom/google/glass/browser/WebBrowserActivity;->access$800(Lcom/google/glass/browser/WebBrowserActivity;)J

    move-result-wide v4

    sub-long v4, v1, v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 434
    .local v3, "time":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v4}, Lcom/google/glass/browser/WebBrowserActivity;->access$900(Lcom/google/glass/browser/WebBrowserActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Successfully loaded %s (in %s ms)."

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p2, v6, v9

    aput-object v3, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    const-string v5, "time"

    const/16 v4, 0xc

    new-array v6, v4, [Ljava/lang/Object;

    const-string v4, "url"

    aput-object v4, v6, v9

    aput-object p2, v6, v7

    const-string v4, "gslc"

    aput-object v4, v6, v8

    const/4 v4, 0x3

    iget-object v7, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    .line 438
    invoke-static {v7}, Lcom/google/glass/browser/WebBrowserActivity;->access$1000(Lcom/google/glass/browser/WebBrowserActivity;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x4

    const-string v7, "tc"

    aput-object v7, v6, v4

    const/4 v4, 0x5

    iget-object v7, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    .line 439
    invoke-static {v7}, Lcom/google/glass/browser/WebBrowserActivity;->access$1100(Lcom/google/glass/browser/WebBrowserActivity;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x6

    const-string v7, "ppdd"

    aput-object v7, v6, v4

    const/4 v4, 0x7

    iget-object v7, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    .line 440
    invoke-static {v7}, Lcom/google/glass/browser/WebBrowserActivity;->access$1200(Lcom/google/glass/browser/WebBrowserActivity;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v4

    const-string v4, "ppdp"

    aput-object v4, v6, v10

    const/16 v4, 0x9

    iget-object v7, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    .line 441
    invoke-static {v7}, Lcom/google/glass/browser/WebBrowserActivity;->access$1300(Lcom/google/glass/browser/WebBrowserActivity;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/16 v4, 0xa

    const-string v7, "pre"

    aput-object v7, v6, v4

    const/16 v7, 0xb

    iget-object v4, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    iget-object v4, v4, Lcom/google/glass/browser/WebBrowserActivity;->preloadedView:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    if-nez v4, :cond_3

    const-string v4, "0"

    :goto_1
    aput-object v4, v6, v7

    .line 435
    invoke-static {v5, v3, v6}, Lcom/google/glass/userevent/UserEventHelper;->createEventTupleBuilder(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 443
    .local v0, "eventTupleBuilder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v4}, Lcom/google/glass/browser/WebBrowserActivity;->access$1400(Lcom/google/glass/browser/WebBrowserActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/glass/userevent/UserEventHelper;->appendData(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 444
    iget-object v4, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v4}, Lcom/google/glass/browser/WebBrowserActivity;->access$1500(Lcom/google/glass/browser/WebBrowserActivity;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v4

    sget-object v5, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PAGE_LOADED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 446
    iget-object v4, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    iget-object v4, v4, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v4}, Lcom/google/glass/browser/WebBrowserWebView;->resetTranslation()V

    .line 447
    iget-object v4, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    iget-object v4, v4, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v4, v9}, Lcom/google/glass/browser/WebBrowserWebView;->setVisibility(I)V

    .line 449
    iget-object v4, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v4}, Lcom/google/glass/browser/WebBrowserActivity;->access$1600(Lcom/google/glass/browser/WebBrowserActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 451
    iget-object v4, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v4}, Lcom/google/glass/browser/WebBrowserActivity;->access$1708(Lcom/google/glass/browser/WebBrowserActivity;)J

    .line 452
    return-void

    .line 418
    .end local v0    # "eventTupleBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "time":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    iget-object v5, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v5}, Lcom/google/glass/browser/WebBrowserActivity;->access$200(Lcom/google/glass/browser/WebBrowserActivity;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v6}, Lcom/google/glass/browser/WebBrowserActivity;->access$300(Lcom/google/glass/browser/WebBrowserActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/glass/browser/WebBrowserActivity;->stopListeningForGuardPhrase(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 441
    .restart local v3    # "time":Ljava/lang/String;
    :cond_3
    const-string v4, "1"

    goto :goto_1
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 457
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 458
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v2}, Lcom/google/glass/browser/WebBrowserActivity;->access$600(Lcom/google/glass/browser/WebBrowserActivity;)Lcom/google/glass/widget/SliderView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 461
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v2}, Lcom/google/glass/browser/WebBrowserActivity;->access$100(Lcom/google/glass/browser/WebBrowserActivity;)Lcom/google/glass/time/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v4}, Lcom/google/glass/browser/WebBrowserActivity;->access$800(Lcom/google/glass/browser/WebBrowserActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 462
    .local v1, "time":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v2}, Lcom/google/glass/browser/WebBrowserActivity;->access$900(Lcom/google/glass/browser/WebBrowserActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Error %d loading %s (in %s ms.)"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object p4, v4, v6

    aput-object v1, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 463
    const-string v2, "errorCode"

    .line 464
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "desc"

    aput-object v5, v4, v8

    aput-object p3, v4, v6

    const-string v5, "url"

    aput-object v5, v4, v7

    aput-object p4, v4, v10

    const/4 v5, 0x4

    const-string v6, "time"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object v1, v4, v5

    const/4 v5, 0x6

    const-string v6, "gslc"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    .line 468
    invoke-static {v6}, Lcom/google/glass/browser/WebBrowserActivity;->access$1000(Lcom/google/glass/browser/WebBrowserActivity;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "tc"

    aput-object v5, v4, v9

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    .line 469
    invoke-static {v6}, Lcom/google/glass/browser/WebBrowserActivity;->access$1100(Lcom/google/glass/browser/WebBrowserActivity;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 463
    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTupleBuilder(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 470
    .local v0, "eventTupleBuilder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v2}, Lcom/google/glass/browser/WebBrowserActivity;->access$1400(Lcom/google/glass/browser/WebBrowserActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/glass/userevent/UserEventHelper;->appendData(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 471
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v2}, Lcom/google/glass/browser/WebBrowserActivity;->access$1500(Lcom/google/glass/browser/WebBrowserActivity;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v2

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->BROWSER_ERROR:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 473
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v2}, Lcom/google/glass/browser/WebBrowserActivity;->access$1600(Lcom/google/glass/browser/WebBrowserActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 474
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v2}, Lcom/google/glass/browser/WebBrowserActivity;->access$1800(Lcom/google/glass/browser/WebBrowserActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 475
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v2}, Lcom/google/glass/browser/WebBrowserActivity;->access$1900(Lcom/google/glass/browser/WebBrowserActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v2}, Lcom/google/glass/browser/WebBrowserActivity;->access$600(Lcom/google/glass/browser/WebBrowserActivity;)Lcom/google/glass/widget/SliderView;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    .line 477
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 481
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 482
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity$1;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-virtual {v0, p2}, Lcom/google/glass/browser/WebBrowserActivity;->resetLoadingState(Ljava/lang/String;)Z

    .line 483
    const/4 v0, 0x0

    return v0
.end method
