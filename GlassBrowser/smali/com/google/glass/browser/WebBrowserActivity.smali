.class public final Lcom/google/glass/browser/WebBrowserActivity;
.super Lcom/google/glass/voice/GlassVoiceActivity;
.source "WebBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/browser/WebBrowserActivity$6;,
        Lcom/google/glass/browser/WebBrowserActivity$WebBrowserActivityHandler;
    }
.end annotation


# static fields
.field private static final BETWEEN_CLUTCH_MODE_RELEASE_AND_FLING_MS:J = 0x64L

.field public static final BROWSER_LOGGING_GROUP:Ljava/lang/String; = "browser"

.field private static final BROWSER_PREFS:Ljava/lang/String; = "browser_prefs"

.field public static final EXTRA_CURRENT_URL:Ljava/lang/String; = "currentUrl"

.field public static final EXTRA_HTML_DATA:Ljava/lang/String; = "htmlData"

.field public static final EXTRA_USER_EVENT_CONTEXT_DATA:Ljava/lang/String; = "userEventContextData"

.field private static final FLING_VELOCITY_SCALE:I = 0x28

.field private static final MIN_FLING_VELOCITY:I = 0xa

.field private static final MIN_LOADING_DISPLAY_MS:I = 0x5dc

.field private static final MIN_PRELOADED_PROGRESS_DISPLAY:I = 0x3c

.field static final MIN_TIME_BEFORE_CLUTCH_MODE_MS:J = 0x7d0L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MIN_TOUCH_SCROLL_THRESHOLD:I = 0xa

.field private static final MIN_TOUCH_SCROLL_THRESHOLD_WHILE_RETICULE_SHOWING:I = 0x14

.field private static final NO_VALUE:I = -0x1

.field private static final STANDARD_NOTIFICATION_WINDOW_MS:J = 0x1388L


# instance fields
.field private browserSlider:Lcom/google/glass/widget/SliderView;

.field browserWebView:Lcom/google/glass/browser/WebBrowserWebView;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final clock:Lcom/google/glass/time/Clock;

.field private clutchDetector:Lcom/google/glass/touchpad/ClutchDetector;

.field private clutchHelper:Lcom/google/glass/browser/ClutchHelper;

.field private volatile currentUrl:Ljava/lang/String;

.field destroyed:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private errorMessage:Landroid/widget/TextView;

.field private gotoSelectedLinkCount:J

.field private gradient:Landroid/widget/ImageView;

.field private guardPhraseHint:Landroid/widget/TextView;

.field private final handler:Landroid/os/Handler;

.field private htmlData:Ljava/lang/String;

.field private lastAccumulatorX:F

.field private lastVelocityX:F

.field volatile loaded:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private loadingMessage:Landroid/widget/TextView;

.field private loadingUrl:Landroid/widget/TextView;

.field private loadingView:Landroid/view/View;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private pageLoadStartTime:J

.field private pagePartiallyDisplayedDelay:J

.field private pagePartiallyDisplayedProgress:I

.field paused:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field preloadedView:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private sessionPageCount:J

.field private sessionStartTime:J

.field private tapCount:J

.field private tipsViewHelper:Lcom/google/glass/browser/TipsViewHelper;

.field private userEventContextData:Ljava/lang/String;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private verticalRecoverScroller:Lcom/google/glass/browser/VerticalRecoverScroller;

.field webViewClient:Landroid/webkit/WebViewClient;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 322
    invoke-direct {p0}, Lcom/google/glass/voice/GlassVoiceActivity;-><init>()V

    .line 71
    const-string v0, "browser"

    invoke-static {p0, v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 188
    new-instance v0, Lcom/google/glass/browser/WebBrowserActivity$WebBrowserActivityHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/browser/WebBrowserActivity$WebBrowserActivityHandler;-><init>(Lcom/google/glass/browser/WebBrowserActivity;Lcom/google/glass/browser/WebBrowserActivity$1;)V

    iput-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->handler:Landroid/os/Handler;

    .line 206
    iput-wide v2, p0, Lcom/google/glass/browser/WebBrowserActivity;->sessionStartTime:J

    .line 212
    iput-wide v2, p0, Lcom/google/glass/browser/WebBrowserActivity;->sessionPageCount:J

    .line 291
    iput-wide v2, p0, Lcom/google/glass/browser/WebBrowserActivity;->tapCount:J

    .line 305
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->pagePartiallyDisplayedDelay:J

    .line 312
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->pagePartiallyDisplayedProgress:I

    .line 323
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->clock:Lcom/google/glass/time/Clock;

    .line 324
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 325
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/browser/WebBrowserActivity;)Lcom/google/glass/time/Clock;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->clock:Lcom/google/glass/time/Clock;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/browser/WebBrowserActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserActivity;

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->gotoSelectedLinkCount:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/google/glass/browser/WebBrowserActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserActivity;

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->tapCount:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/google/glass/browser/WebBrowserActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserActivity;

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->pagePartiallyDisplayedDelay:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/google/glass/browser/WebBrowserActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserActivity;
    .param p1, "x1"    # J

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/google/glass/browser/WebBrowserActivity;->pagePartiallyDisplayedDelay:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/google/glass/browser/WebBrowserActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserActivity;

    .prologue
    .line 68
    iget v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->pagePartiallyDisplayedProgress:I

    return v0
.end method

.method static synthetic access$1302(Lcom/google/glass/browser/WebBrowserActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserActivity;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/google/glass/browser/WebBrowserActivity;->pagePartiallyDisplayedProgress:I

    return p1
.end method

.method static synthetic access$1400(Lcom/google/glass/browser/WebBrowserActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->userEventContextData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/glass/browser/WebBrowserActivity;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/glass/browser/WebBrowserActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->loadingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1708(Lcom/google/glass/browser/WebBrowserActivity;)J
    .locals 4
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserActivity;

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->sessionPageCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/glass/browser/WebBrowserActivity;->sessionPageCount:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/google/glass/browser/WebBrowserActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->loadingMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/glass/browser/WebBrowserActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->errorMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/browser/WebBrowserActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->gradient:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/glass/browser/WebBrowserActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->currentUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/glass/browser/WebBrowserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserActivity;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/glass/browser/WebBrowserActivity;->goBack()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/glass/browser/WebBrowserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserActivity;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/glass/browser/WebBrowserActivity;->goForward()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/browser/WebBrowserActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->guardPhraseHint:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/browser/WebBrowserActivity;)Lcom/google/glass/touchpad/ClutchDetector;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->clutchDetector:Lcom/google/glass/touchpad/ClutchDetector;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/browser/WebBrowserActivity;)Lcom/google/glass/browser/ClutchHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->clutchHelper:Lcom/google/glass/browser/ClutchHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/browser/WebBrowserActivity;)Lcom/google/glass/widget/SliderView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserSlider:Lcom/google/glass/widget/SliderView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/browser/WebBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/browser/WebBrowserActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserActivity;

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->pageLoadStartTime:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/google/glass/browser/WebBrowserActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private static getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 648
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 649
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 650
    const/4 v1, 0x0

    .line 653
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getUrlAndLogRequest(Landroid/content/Intent;)Ljava/lang/String;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 617
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 618
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 619
    const-string v4, "currentUrl"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "currentUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 621
    const-string v4, "url"

    new-array v5, v5, [Ljava/lang/Object;

    .line 622
    invoke-static {v4, v0, v5}, Lcom/google/glass/userevent/UserEventHelper;->createEventTupleBuilder(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 623
    .local v2, "eventTupleBuilder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/google/glass/browser/WebBrowserActivity;->userEventContextData:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/google/glass/userevent/UserEventHelper;->appendData(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 624
    iget-object v4, p0, Lcom/google/glass/browser/WebBrowserActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v5, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PAGE_REQUESTED_EXPLICIT:Lcom/google/glass/userevent/UserEventAction;

    .line 625
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 624
    invoke-virtual {v4, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 640
    .end local v0    # "currentUrl":Ljava/lang/String;
    .end local v2    # "eventTupleBuilder":Ljava/lang/StringBuilder;
    :goto_0
    return-object v0

    .line 631
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 632
    .local v1, "dataUrl":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 633
    const-string v4, "url"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v1, v5}, Lcom/google/glass/userevent/UserEventHelper;->createEventTupleBuilder(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 634
    .restart local v2    # "eventTupleBuilder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/google/glass/browser/WebBrowserActivity;->userEventContextData:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/google/glass/userevent/UserEventHelper;->appendData(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 635
    iget-object v4, p0, Lcom/google/glass/browser/WebBrowserActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v5, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PAGE_REQUESTED_IMPLICIT:Lcom/google/glass/userevent/UserEventAction;

    .line 636
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 635
    invoke-virtual {v4, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    move-object v0, v1

    .line 637
    goto :goto_0

    .line 640
    .end local v2    # "eventTupleBuilder":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private goBack()V
    .locals 4

    .prologue
    .line 853
    iget-object v3, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v3}, Lcom/google/glass/browser/WebBrowserWebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v2

    .line 854
    .local v2, "backList":Landroid/webkit/WebBackForwardList;
    invoke-virtual {v2}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    .line 855
    .local v1, "backIndex":I
    if-lez v1, :cond_0

    .line 856
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 857
    .local v0, "backHistoryItem":Landroid/webkit/WebHistoryItem;
    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/glass/browser/WebBrowserActivity;->resetLoadingState(Ljava/lang/String;)Z

    .line 860
    .end local v0    # "backHistoryItem":Landroid/webkit/WebHistoryItem;
    :cond_0
    iget-object v3, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v3}, Lcom/google/glass/browser/WebBrowserWebView;->goBack()V

    .line 861
    return-void
.end method

.method private goForward()V
    .locals 4

    .prologue
    .line 841
    iget-object v3, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v3}, Lcom/google/glass/browser/WebBrowserWebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v2

    .line 842
    .local v2, "forwardList":Landroid/webkit/WebBackForwardList;
    invoke-virtual {v2}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    .line 843
    .local v1, "forwardIndex":I
    invoke-virtual {v2}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    .line 844
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 845
    .local v0, "forwardHistoryItem":Landroid/webkit/WebHistoryItem;
    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/glass/browser/WebBrowserActivity;->resetLoadingState(Ljava/lang/String;)Z

    .line 848
    .end local v0    # "forwardHistoryItem":Landroid/webkit/WebHistoryItem;
    :cond_0
    iget-object v3, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v3}, Lcom/google/glass/browser/WebBrowserWebView;->goForward()V

    .line 849
    return-void
.end method

.method private handleVerticalOverScroll(I)V
    .locals 5
    .param p1, "delta"    # I

    .prologue
    .line 916
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 919
    :cond_1
    iget-object v3, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v3}, Lcom/google/glass/browser/WebBrowserWebView;->getTranslationY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 920
    .local v2, "translation":I
    iget-object v3, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v3}, Lcom/google/glass/browser/WebBrowserWebView;->getHeight()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 921
    .local v1, "maxTranslation":I
    if-eqz v1, :cond_0

    .line 925
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    div-int/2addr v3, v1

    rsub-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, p1

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 926
    .local v0, "dampenedDelta":I
    iget-object v3, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    sub-int v4, v2, v0

    int-to-float v4, v4

    invoke-interface {v3, v4}, Lcom/google/glass/browser/WebBrowserWebView;->setTranslationY(F)V

    goto :goto_0
.end method

.method private scrollVerticallyBy(F)I
    .locals 11
    .param p1, "delta"    # F

    .prologue
    const/4 v10, 0x0

    .line 935
    iget-object v5, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v5}, Lcom/google/glass/browser/WebBrowserWebView;->getScrollY()I

    move-result v2

    .line 936
    .local v2, "scroll":I
    iget-object v5, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v5}, Lcom/google/glass/browser/WebBrowserWebView;->getTranslationY()F

    move-result v4

    .line 937
    .local v4, "translation":F
    iget-object v5, p0, Lcom/google/glass/browser/WebBrowserActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "scrollVerticallyBy(delta: [%s]). scroll: [%s], translation: [%s]"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 938
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    .line 937
    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 940
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/4 v6, 0x1

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 941
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v5

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 942
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 972
    :goto_0
    return v5

    .line 945
    :cond_0
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    neg-float v0, p1

    .line 947
    .local v0, "doTranslation":F
    :goto_1
    iget-object v5, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    add-float v6, v4, v0

    invoke-interface {v5, v6}, Lcom/google/glass/browser/WebBrowserWebView;->setTranslationY(F)V

    .line 948
    iget-object v5, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v5}, Lcom/google/glass/browser/WebBrowserWebView;->onScrollChanged()V

    .line 949
    add-float/2addr p1, v0

    .line 952
    .end local v0    # "doTranslation":F
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 953
    .local v3, "scrollBy":I
    if-gez v3, :cond_6

    .line 954
    if-gtz v2, :cond_3

    .line 955
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v5

    goto :goto_0

    .line 945
    .end local v3    # "scrollBy":I
    :cond_2
    neg-float v0, v4

    goto :goto_1

    .line 958
    .restart local v3    # "scrollBy":I
    :cond_3
    neg-int v5, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 968
    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 969
    iget-object v5, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v5, v10, v3}, Lcom/google/glass/browser/WebBrowserWebView;->scrollBy(II)V

    .line 972
    :cond_5
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int/2addr v5, v3

    goto :goto_0

    .line 959
    :cond_6
    if-lez v3, :cond_4

    .line 960
    iget-object v5, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v5}, Lcom/google/glass/browser/WebBrowserWebView;->computeRealVerticalScrollRange()I

    move-result v5

    iget-object v6, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v6}, Lcom/google/glass/browser/WebBrowserWebView;->getHeight()I

    move-result v6

    sub-int v1, v5, v6

    .line 961
    .local v1, "maxScroll":I
    if-lt v2, v1, :cond_7

    .line 962
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v5

    goto :goto_0

    .line 965
    :cond_7
    sub-int v5, v1, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_2
.end method

.method private selectLink()V
    .locals 17

    .prologue
    .line 816
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/google/glass/browser/WebBrowserActivity;->tapCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/google/glass/browser/WebBrowserActivity;->tapCount:J

    .line 817
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/WebBrowserActivity;->clock:Lcom/google/glass/time/Clock;

    .line 818
    invoke-interface {v1}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/browser/WebBrowserActivity;->clock:Lcom/google/glass/time/Clock;

    .line 819
    invoke-interface {v3}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    .line 821
    invoke-interface {v6}, Lcom/google/glass/browser/WebBrowserWebView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v7}, Lcom/google/glass/browser/WebBrowserWebView;->getTranslationX()F

    move-result v7

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    .line 822
    invoke-interface {v7}, Lcom/google/glass/browser/WebBrowserWebView;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v8}, Lcom/google/glass/browser/WebBrowserWebView;->getTranslationY()F

    move-result v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x41200000    # 10.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 817
    invoke-static/range {v1 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v15

    .line 830
    .local v15, "motionEventDown":Landroid/view/MotionEvent;
    const/4 v1, 0x2

    invoke-virtual {v15, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 831
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v1, v15}, Lcom/google/glass/browser/WebBrowserWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 832
    invoke-static {v15}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v16

    .line 833
    .local v16, "motionEventUp":Landroid/view/MotionEvent;
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 834
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    move-object/from16 v0, v16

    invoke-interface {v1, v0}, Lcom/google/glass/browser/WebBrowserWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 835
    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->recycle()V

    .line 836
    invoke-virtual {v15}, Landroid/view/MotionEvent;->recycle()V

    .line 837
    return-void
.end method


# virtual methods
.method public getCurrentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->currentUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getWebView()Lcom/google/glass/browser/WebBrowserWebView;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 666
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    return-object v0
.end method

.method public onCreateInternal(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 334
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 335
    invoke-super/range {p0 .. p1}, Lcom/google/glass/voice/GlassVoiceActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v2}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->sessionStartTime:J

    .line 339
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->gotoSelectedLinkCount:J

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/browser/WebBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "userEventContextData"

    invoke-static {v2, v3}, Lcom/google/glass/browser/WebBrowserActivity;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->userEventContextData:Ljava/lang/String;

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/browser/WebBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/glass/browser/WebBrowserActivity;->getUrlAndLogRequest(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v15

    .line 342
    .local v15, "url":Ljava/lang/String;
    if-nez v15, :cond_0

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/browser/WebBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "htmlData"

    invoke-static {v2, v3}, Lcom/google/glass/browser/WebBrowserActivity;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->htmlData:Ljava/lang/String;

    .line 347
    :cond_0
    if-nez v15, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->htmlData:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Could not find url OR html data in intent"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/browser/WebBrowserActivity;->finish()V

    .line 564
    :goto_0
    return-void

    .line 353
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->lastVelocityX:F

    .line 355
    sget v2, Lcom/google/glass/browser/R$id;->loading_view:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/glass/browser/WebBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->loadingView:Landroid/view/View;

    .line 356
    sget v2, Lcom/google/glass/browser/R$id;->loading_textview:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/glass/browser/WebBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->loadingMessage:Landroid/widget/TextView;

    .line 357
    sget v2, Lcom/google/glass/browser/R$id;->error_textview:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/glass/browser/WebBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->errorMessage:Landroid/widget/TextView;

    .line 358
    sget v2, Lcom/google/glass/browser/R$id;->browser_loading_url:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/glass/browser/WebBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->loadingUrl:Landroid/widget/TextView;

    .line 359
    sget v2, Lcom/google/glass/browser/R$id;->browser_slider:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/glass/browser/WebBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/SliderView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->browserSlider:Lcom/google/glass/widget/SliderView;

    .line 360
    sget v2, Lcom/google/glass/browser/R$id;->gradient:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/glass/browser/WebBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->gradient:Landroid/widget/ImageView;

    .line 361
    sget v2, Lcom/google/glass/browser/R$id;->guard_phrase_hint:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/glass/browser/WebBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->guardPhraseHint:Landroid/widget/TextView;

    .line 363
    const-string v2, "browser_prefs"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/glass/browser/WebBrowserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 364
    .local v13, "prefs":Landroid/content/SharedPreferences;
    sget v2, Lcom/google/glass/browser/R$id;->browser_tip:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/glass/browser/WebBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/google/glass/widget/TipsView;

    .line 365
    .local v14, "tipsView":Lcom/google/glass/widget/TipsView;
    invoke-static {}, Lcom/google/glass/browser/TipsViewHelperProvider;->getInstance()Lcom/google/glass/browser/TipsViewHelperProvider;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Lcom/google/glass/browser/TipsViewHelperProvider;->get(Landroid/content/SharedPreferences;Lcom/google/glass/widget/TipsView;)Lcom/google/glass/browser/TipsViewHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->tipsViewHelper:Lcom/google/glass/browser/TipsViewHelper;

    .line 369
    invoke-static/range {p0 .. p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 370
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 372
    sget v2, Lcom/google/glass/browser/R$id;->browser_slider:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/glass/browser/WebBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/SliderView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->browserSlider:Lcom/google/glass/widget/SliderView;

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->browserSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v2}, Lcom/google/glass/widget/SliderView;->startIndeterminate()V

    .line 375
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/glass/browser/WebBrowserActivity;->resetLoadingState(Ljava/lang/String;)Z

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->currentUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/glass/browser/WebBrowserPreloadService;->tryGetPreloaded(Ljava/lang/String;)Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->preloadedView:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->preloadedView:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->preloadedView:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    invoke-virtual {v2}, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->getWebBrowser()Lcom/google/glass/browser/WebBrowserWebView;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/browser/WebBrowserWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_3

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Found preloaded view for url: [%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/glass/browser/WebBrowserActivity;->currentUrl:Ljava/lang/String;

    aput-object v8, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->preloadedView:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    invoke-virtual {v2}, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->getWebBrowser()Lcom/google/glass/browser/WebBrowserWebView;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    .line 387
    :goto_1
    sget v2, Lcom/google/glass/browser/R$id;->clutch_mode_frame:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/glass/browser/WebBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 388
    .local v5, "clutchModeFrameView":Landroid/view/View;
    sget v2, Lcom/google/glass/browser/R$id;->reticle:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/glass/browser/WebBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 389
    .local v6, "reticleView":Landroid/view/View;
    invoke-static {}, Lcom/google/glass/browser/ClutchHelperProvider;->getInstance()Lcom/google/glass/browser/ClutchHelperProvider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/browser/WebBrowserActivity;->clock:Lcom/google/glass/time/Clock;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/glass/browser/WebBrowserActivity;->tipsViewHelper:Lcom/google/glass/browser/TipsViewHelper;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/glass/browser/WebBrowserActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual/range {v2 .. v8}, Lcom/google/glass/browser/ClutchHelperProvider;->get(Lcom/google/glass/time/Clock;Lcom/google/glass/browser/WebBrowserWebView;Landroid/view/View;Landroid/view/View;Lcom/google/glass/browser/TipsViewHelper;Lcom/google/glass/userevent/UserEventHelper;)Lcom/google/glass/browser/ClutchHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->clutchHelper:Lcom/google/glass/browser/ClutchHelper;

    .line 392
    invoke-static/range {p0 .. p0}, Lcom/google/glass/touchpad/ClutchDetector;->from(Landroid/content/Context;)Lcom/google/glass/touchpad/ClutchDetector;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->clutchDetector:Lcom/google/glass/touchpad/ClutchDetector;

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->clutchDetector:Lcom/google/glass/touchpad/ClutchDetector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/browser/WebBrowserActivity;->clutchHelper:Lcom/google/glass/browser/ClutchHelper;

    invoke-virtual {v2, v3}, Lcom/google/glass/touchpad/ClutchDetector;->setStateListener(Lcom/google/glass/touchpad/ClutchDetector$StateListener;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->clutchDetector:Lcom/google/glass/touchpad/ClutchDetector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/browser/WebBrowserActivity;->clutchHelper:Lcom/google/glass/browser/ClutchHelper;

    invoke-virtual {v2, v3}, Lcom/google/glass/touchpad/ClutchDetector;->setMoveListener(Lcom/google/glass/touchpad/ClutchDetector$MoveListener;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->clutchDetector:Lcom/google/glass/touchpad/ClutchDetector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/browser/WebBrowserActivity;->clutchHelper:Lcom/google/glass/browser/ClutchHelper;

    invoke-virtual {v2, v3}, Lcom/google/glass/touchpad/ClutchDetector;->setScaleListener(Lcom/google/glass/touchpad/ClutchDetector$ScaleListener;)V

    .line 397
    sget v2, Lcom/google/glass/browser/R$id;->browser_view_switcher:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/glass/browser/WebBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ViewSwitcher;

    .line 398
    .local v16, "viewSwitcher":Landroid/widget/ViewSwitcher;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v2}, Lcom/google/glass/browser/WebBrowserWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v18

    .line 401
    .local v18, "webView":Landroid/webkit/WebView;
    if-eqz v18, :cond_2

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v2}, Lcom/google/glass/browser/WebBrowserWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;)V

    .line 403
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 407
    :cond_2
    new-instance v2, Lcom/google/glass/browser/WebBrowserActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/glass/browser/WebBrowserActivity$1;-><init>(Lcom/google/glass/browser/WebBrowserActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->webViewClient:Landroid/webkit/WebViewClient;

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/browser/WebBrowserActivity;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-interface {v2, v3}, Lcom/google/glass/browser/WebBrowserWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 487
    new-instance v2, Lcom/google/glass/browser/VerticalRecoverScroller;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/google/glass/browser/VerticalRecoverScroller;-><init>(Landroid/content/Context;Lcom/google/glass/browser/WebBrowserWebView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->verticalRecoverScroller:Lcom/google/glass/browser/VerticalRecoverScroller;

    .line 489
    new-instance v17, Lcom/google/glass/browser/WebBrowserActivity$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/glass/browser/WebBrowserActivity$2;-><init>(Lcom/google/glass/browser/WebBrowserActivity;)V

    .line 514
    .local v17, "webChromeClient":Landroid/webkit/WebChromeClient;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lcom/google/glass/browser/WebBrowserWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->preloadedView:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    if-eqz v2, :cond_4

    .line 517
    sget-object v2, Lcom/google/glass/browser/WebBrowserActivity$6;->$SwitchMap$com$google$glass$browser$WebBrowserPreloadService$PreloadedWebBrowserWebView$State:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/browser/WebBrowserActivity;->preloadedView:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    invoke-virtual {v3}, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->getState()Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 545
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/browser/WebBrowserActivity;->preloadedView:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    .line 546
    invoke-virtual {v3}, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->getState()Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x21

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Unexpected preloaded view state: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 384
    .end local v5    # "clutchModeFrameView":Landroid/view/View;
    .end local v6    # "reticleView":Landroid/view/View;
    .end local v16    # "viewSwitcher":Landroid/widget/ViewSwitcher;
    .end local v17    # "webChromeClient":Landroid/webkit/WebChromeClient;
    .end local v18    # "webView":Landroid/webkit/WebView;
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/google/glass/browser/WebBrowserWebViewProvider;->get(Landroid/content/Context;)Lcom/google/glass/browser/WebBrowserWebView;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    goto/16 :goto_1

    .line 519
    .restart local v5    # "clutchModeFrameView":Landroid/view/View;
    .restart local v6    # "reticleView":Landroid/view/View;
    .restart local v16    # "viewSwitcher":Landroid/widget/ViewSwitcher;
    .restart local v17    # "webChromeClient":Landroid/webkit/WebChromeClient;
    .restart local v18    # "webView":Landroid/webkit/WebView;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->webViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/browser/WebBrowserActivity;->preloadedView:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    invoke-virtual {v3}, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->getWebBrowser()Lcom/google/glass/browser/WebBrowserWebView;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/glass/browser/WebBrowserWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/browser/WebBrowserActivity;->currentUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 522
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->webViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/browser/WebBrowserActivity;->preloadedView:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    .line 523
    invoke-virtual {v3}, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->getWebBrowser()Lcom/google/glass/browser/WebBrowserWebView;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/glass/browser/WebBrowserWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/browser/WebBrowserActivity;->preloadedView:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    .line 524
    invoke-virtual {v4}, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->getErrorCode()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/glass/browser/WebBrowserActivity;->preloadedView:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    .line 525
    invoke-virtual {v7}, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->getErrorDescription()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/glass/browser/WebBrowserActivity;->preloadedView:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    .line 526
    invoke-virtual {v8}, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 522
    invoke-virtual {v2, v3, v4, v7, v8}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 529
    :pswitch_2
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/google/glass/browser/WebBrowserActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/google/glass/browser/WebBrowserActivity$3;-><init>(Lcom/google/glass/browser/WebBrowserActivity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 542
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 551
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->currentUrl:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 553
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v2

    if-nez v2, :cond_5

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "loading url: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/glass/browser/WebBrowserActivity;->currentUrl:Ljava/lang/String;

    aput-object v8, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/browser/WebBrowserActivity;->currentUrl:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/glass/browser/WebBrowserWebView;->loadUrl(Ljava/lang/String;)V

    .line 558
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->loadingUrl:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/browser/WebBrowserActivity;->currentUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 560
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/WebBrowserActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "loading data: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/glass/browser/WebBrowserActivity;->htmlData:Ljava/lang/String;

    aput-object v8, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/glass/browser/WebBrowserActivity;->htmlData:Ljava/lang/String;

    const-string v10, "text/html"

    const-string v11, "utf-8"

    const/4 v12, 0x0

    invoke-interface/range {v7 .. v12}, Lcom/google/glass/browser/WebBrowserWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 517
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 751
    invoke-virtual {p0}, Lcom/google/glass/browser/WebBrowserActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/browser/R$menu;->browser_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 752
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroyInternal()V
    .locals 2

    .prologue
    .line 727
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 730
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/google/glass/browser/WebBrowserWebView;->setVisibility(I)V

    .line 732
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v0}, Lcom/google/glass/browser/WebBrowserWebView;->destroy()V

    .line 735
    :cond_0
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onDestroyInternal()V

    .line 736
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->destroyed:Z

    .line 737
    return-void
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 8
    .param p1, "count"    # I
    .param p2, "wentDown"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 983
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 985
    iget-object v3, p0, Lcom/google/glass/browser/WebBrowserActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "onFingerCountChanged(count: [%s], wentDown: [%s])"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 987
    iget-object v3, p0, Lcom/google/glass/browser/WebBrowserActivity;->clutchHelper:Lcom/google/glass/browser/ClutchHelper;

    invoke-virtual {v3}, Lcom/google/glass/browser/ClutchHelper;->isClutchMode()Z

    move-result v3

    if-nez v3, :cond_0

    if-lez p1, :cond_2

    :cond_0
    move v1, v2

    .line 1015
    :cond_1
    :goto_0
    return v1

    .line 993
    :cond_2
    iput v7, p0, Lcom/google/glass/browser/WebBrowserActivity;->lastAccumulatorX:F

    .line 996
    iget v3, p0, Lcom/google/glass/browser/WebBrowserActivity;->lastVelocityX:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/google/glass/browser/WebBrowserActivity;->clock:Lcom/google/glass/time/Clock;

    .line 997
    invoke-interface {v3}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/glass/browser/WebBrowserActivity;->clutchHelper:Lcom/google/glass/browser/ClutchHelper;

    invoke-virtual {v5}, Lcom/google/glass/browser/ClutchHelper;->getLastClutchModeReleaseTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x64

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 999
    iget-object v3, p0, Lcom/google/glass/browser/WebBrowserActivity;->clutchHelper:Lcom/google/glass/browser/ClutchHelper;

    invoke-virtual {v3}, Lcom/google/glass/browser/ClutchHelper;->hideReticleView()V

    .line 1001
    iget v3, p0, Lcom/google/glass/browser/WebBrowserActivity;->lastVelocityX:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1002
    .local v0, "v":I
    iget-object v3, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    mul-int/lit8 v4, v0, 0x28

    invoke-interface {v3, v2, v4}, Lcom/google/glass/browser/WebBrowserWebView;->flingScroll(II)V

    .line 1003
    iput v7, p0, Lcom/google/glass/browser/WebBrowserActivity;->lastVelocityX:F

    .line 1005
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity;->verticalRecoverScroller:Lcom/google/glass/browser/VerticalRecoverScroller;

    if-eqz v2, :cond_3

    .line 1006
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity;->verticalRecoverScroller:Lcom/google/glass/browser/VerticalRecoverScroller;

    invoke-virtual {v2}, Lcom/google/glass/browser/VerticalRecoverScroller;->reset()V

    .line 1007
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity;->verticalRecoverScroller:Lcom/google/glass/browser/VerticalRecoverScroller;

    invoke-virtual {v2}, Lcom/google/glass/browser/VerticalRecoverScroller;->handleOverscroll()V

    .line 1010
    :cond_3
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity;->clutchHelper:Lcom/google/glass/browser/ClutchHelper;

    invoke-virtual {v2}, Lcom/google/glass/browser/ClutchHelper;->isClutchModeAllowed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1011
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity;->tipsViewHelper:Lcom/google/glass/browser/TipsViewHelper;

    sget-object v3, Lcom/google/glass/browser/TipsViewHelper$Tip;->TWO_FINGER_PAN:Lcom/google/glass/browser/TipsViewHelper$Tip;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/browser/TipsViewHelper;->showTip(Lcom/google/glass/browser/TipsViewHelper$Tip;Lcom/google/common/base/Predicate;)V

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 741
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->clutchDetector:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-virtual {v0, p1}, Lcom/google/glass/touchpad/ClutchDetector;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/glass/voice/GlassVoiceActivity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "selectedMenuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 795
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 796
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 797
    .local v0, "menuId":I
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "selected menu id %d"

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 799
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->BROWSER_MENU_OPTION:Lcom/google/glass/userevent/UserEventAction;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xb

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 801
    sget v2, Lcom/google/glass/browser/R$id;->go_back:I

    if-ne v0, v2, :cond_0

    .line 802
    invoke-direct {p0}, Lcom/google/glass/browser/WebBrowserActivity;->goBack()V

    .line 812
    :goto_0
    return v1

    .line 804
    :cond_0
    sget v2, Lcom/google/glass/browser/R$id;->go_forward:I

    if-ne v0, v2, :cond_1

    .line 805
    invoke-direct {p0}, Lcom/google/glass/browser/WebBrowserActivity;->goForward()V

    goto :goto_0

    .line 807
    :cond_1
    sget v2, Lcom/google/glass/browser/R$id;->select_link:I

    if-ne v0, v2, :cond_2

    .line 808
    invoke-direct {p0}, Lcom/google/glass/browser/WebBrowserActivity;->selectLink()V

    goto :goto_0

    .line 812
    :cond_2
    invoke-super {p0, p1}, Lcom/google/glass/voice/GlassVoiceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPauseInternal()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 698
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 699
    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserActivity;->clutchHelper:Lcom/google/glass/browser/ClutchHelper;

    invoke-virtual {v1}, Lcom/google/glass/browser/ClutchHelper;->touchUp()V

    .line 700
    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserActivity;->clutchHelper:Lcom/google/glass/browser/ClutchHelper;

    invoke-virtual {v1, v7}, Lcom/google/glass/browser/ClutchHelper;->setIsWebViewVisible(Z)V

    .line 701
    iput-boolean v6, p0, Lcom/google/glass/browser/WebBrowserActivity;->paused:Z

    .line 702
    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserActivity;->clutchDetector:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-virtual {v1}, Lcom/google/glass/touchpad/ClutchDetector;->stop()V

    .line 703
    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserActivity;->verticalRecoverScroller:Lcom/google/glass/browser/VerticalRecoverScroller;

    invoke-virtual {v1}, Lcom/google/glass/browser/VerticalRecoverScroller;->reset()V

    .line 709
    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserActivity;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 713
    const-string v1, "time"

    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity;->clock:Lcom/google/glass/time/Clock;

    .line 714
    invoke-interface {v2}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/glass/browser/WebBrowserActivity;->sessionStartTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "pages"

    aput-object v4, v3, v7

    iget-wide v4, p0, Lcom/google/glass/browser/WebBrowserActivity;->sessionPageCount:J

    .line 715
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    .line 713
    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, "eventTuple":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->BROWSER_SESSION_METRICS:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 719
    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 720
    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->onPause()V

    .line 722
    :cond_0
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onPauseInternal()V

    .line 723
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x0

    .line 757
    iget-boolean v1, p0, Lcom/google/glass/browser/WebBrowserActivity;->loaded:Z

    if-nez v1, :cond_0

    .line 767
    :goto_0
    return v0

    .line 760
    :cond_0
    sget v1, Lcom/google/glass/browser/R$id;->select_link:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity;->clutchHelper:Lcom/google/glass/browser/ClutchHelper;

    .line 761
    invoke-virtual {v2}, Lcom/google/glass/browser/ClutchHelper;->getReticleViewVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 764
    sget v0, Lcom/google/glass/browser/R$id;->go_back:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->canGoBack()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 765
    sget v0, Lcom/google/glass/browser/R$id;->go_forward:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->canGoForward()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 767
    invoke-super {p0, p1}, Lcom/google/glass/voice/GlassVoiceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareSwipe(IFFFFII)Z
    .locals 7
    .param p1, "fingerCount"    # I
    .param p2, "accumulatorX"    # F
    .param p3, "accumulatorY"    # F
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .param p6, "numSwipeX"    # I
    .param p7, "numSwipeY"    # I

    .prologue
    .line 872
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "onPrepareSwipe(fingerCount: [%s], accumulator: [%s, %s], velocity: [%s, %s], numSwipe: [%s, %s]"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 873
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 874
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 872
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 876
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 877
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity;->clutchHelper:Lcom/google/glass/browser/ClutchHelper;

    invoke-virtual {v2}, Lcom/google/glass/browser/ClutchHelper;->isClutchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 878
    const/4 v2, 0x0

    .line 909
    :goto_0
    return v2

    .line 881
    :cond_0
    iget-boolean v2, p0, Lcom/google/glass/browser/WebBrowserActivity;->paused:Z

    if-eqz v2, :cond_1

    .line 882
    const/4 v2, 0x1

    goto :goto_0

    .line 886
    :cond_1
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_2

    .line 887
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/glass/browser/WebBrowserActivity;->lastAccumulatorX:F

    .line 888
    const/4 v2, 0x1

    goto :goto_0

    .line 892
    :cond_2
    iget v2, p0, Lcom/google/glass/browser/WebBrowserActivity;->lastAccumulatorX:F

    sub-float v1, p2, v2

    .line 893
    .local v1, "swipeDelta":F
    iput p2, p0, Lcom/google/glass/browser/WebBrowserActivity;->lastAccumulatorX:F

    .line 897
    iput v1, p0, Lcom/google/glass/browser/WebBrowserActivity;->lastVelocityX:F

    .line 899
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity;->clutchHelper:Lcom/google/glass/browser/ClutchHelper;

    invoke-virtual {v2}, Lcom/google/glass/browser/ClutchHelper;->getReticleViewVisibility()I

    move-result v2

    if-nez v2, :cond_4

    const/16 v0, 0x14

    .line 902
    .local v0, "minTouchScroll":I
    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 903
    invoke-direct {p0, v1}, Lcom/google/glass/browser/WebBrowserActivity;->scrollVerticallyBy(F)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/glass/browser/WebBrowserActivity;->handleVerticalOverScroll(I)V

    .line 904
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity;->clutchHelper:Lcom/google/glass/browser/ClutchHelper;

    invoke-virtual {v2}, Lcom/google/glass/browser/ClutchHelper;->hideReticleView()V

    .line 905
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity;->clutchHelper:Lcom/google/glass/browser/ClutchHelper;

    invoke-virtual {v2}, Lcom/google/glass/browser/ClutchHelper;->isClutchModeAllowed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 906
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity;->tipsViewHelper:Lcom/google/glass/browser/TipsViewHelper;

    sget-object v3, Lcom/google/glass/browser/TipsViewHelper$Tip;->TWO_FINGER_PAN:Lcom/google/glass/browser/TipsViewHelper$Tip;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/browser/TipsViewHelper;->showTip(Lcom/google/glass/browser/TipsViewHelper$Tip;Lcom/google/common/base/Predicate;)V

    .line 909
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 899
    .end local v0    # "minTouchScroll":I
    :cond_4
    const/16 v0, 0xa

    goto :goto_1
.end method

.method protected onResumeInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 683
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 684
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onResumeInternal()V

    .line 685
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 686
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->verticalRecoverScroller:Lcom/google/glass/browser/VerticalRecoverScroller;

    invoke-virtual {v0}, Lcom/google/glass/browser/VerticalRecoverScroller;->handleOverscroll()V

    .line 687
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->clutchHelper:Lcom/google/glass/browser/ClutchHelper;

    invoke-virtual {v0, v1}, Lcom/google/glass/browser/ClutchHelper;->setIsWebViewVisible(Z)V

    .line 688
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->paused:Z

    .line 689
    return-void
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 5
    .param p1, "command"    # Lcom/google/glass/voice/VoiceCommand;

    .prologue
    const/4 v4, 0x0

    .line 772
    invoke-virtual {p0}, Lcom/google/glass/browser/WebBrowserActivity;->newVoiceMenu()Lcom/google/glass/voice/menu/VoiceMenuBuilder;

    move-result-object v0

    .line 773
    .local v0, "menuBuilder":Lcom/google/glass/voice/menu/VoiceMenuBuilder;
    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 774
    sget-object v1, Lcom/google/android/glass/app/ContextualMenus$Command;->GO_BACK:Lcom/google/android/glass/app/ContextualMenus$Command;

    new-instance v2, Lcom/google/glass/browser/WebBrowserActivity$4;

    invoke-direct {v2, p0}, Lcom/google/glass/browser/WebBrowserActivity$4;-><init>(Lcom/google/glass/browser/WebBrowserActivity;)V

    new-array v3, v4, [Lcom/google/glass/voice/menu/Requirement;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/voice/menu/VoiceMenuBuilder;->add(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;[Lcom/google/glass/voice/menu/Requirement;)V

    .line 781
    :cond_0
    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->canGoForward()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 782
    sget-object v1, Lcom/google/android/glass/app/ContextualMenus$Command;->GO_FORWARD:Lcom/google/android/glass/app/ContextualMenus$Command;

    new-instance v2, Lcom/google/glass/browser/WebBrowserActivity$5;

    invoke-direct {v2, p0}, Lcom/google/glass/browser/WebBrowserActivity$5;-><init>(Lcom/google/glass/browser/WebBrowserActivity;)V

    new-array v3, v4, [Lcom/google/glass/voice/menu/Requirement;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/voice/menu/VoiceMenuBuilder;->add(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;[Lcom/google/glass/voice/menu/Requirement;)V

    .line 789
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getCommandCreationUpTimeMillis()J

    move-result-wide v1

    .line 790
    invoke-virtual {p0}, Lcom/google/glass/browser/WebBrowserActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    .line 789
    invoke-static {v1, v2, v3, p0, v0}, Lcom/google/glass/voice/menu/VoiceMenuUtils;->openVoiceMenu(JLcom/google/glass/sound/SoundManager;Lcom/google/glass/voice/GlassVoiceActivity;Lcom/google/glass/voice/menu/VoiceMenuBuilder;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    return-object v1
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 329
    sget v0, Lcom/google/glass/browser/R$layout;->web_browser_activity:I

    return v0
.end method

.method resetLoadingState(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 575
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 576
    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserActivity;->currentUrl:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    :goto_0
    return v0

    .line 579
    :cond_0
    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserActivity;->clutchHelper:Lcom/google/glass/browser/ClutchHelper;

    if-eqz v1, :cond_1

    .line 580
    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserActivity;->clutchHelper:Lcom/google/glass/browser/ClutchHelper;

    invoke-virtual {v1}, Lcom/google/glass/browser/ClutchHelper;->resetLoadingState()V

    .line 582
    :cond_1
    iput-object p1, p0, Lcom/google/glass/browser/WebBrowserActivity;->currentUrl:Ljava/lang/String;

    .line 583
    iput-boolean v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->loaded:Z

    .line 584
    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserActivity;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v1}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/browser/WebBrowserActivity;->pageLoadStartTime:J

    .line 585
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/glass/browser/WebBrowserActivity;->pagePartiallyDisplayedDelay:J

    .line 586
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/glass/browser/WebBrowserActivity;->pagePartiallyDisplayedProgress:I

    .line 587
    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserActivity;->loadingUrl:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserSlider:Lcom/google/glass/widget/SliderView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/SliderView;->setManualProgress(F)V

    .line 589
    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserActivity;->loadingView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 590
    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v1, v0}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    if-eqz v0, :cond_2

    .line 592
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/google/glass/browser/WebBrowserWebView;->setVisibility(I)V

    .line 593
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v0}, Lcom/google/glass/browser/WebBrowserWebView;->resetTranslation()V

    .line 595
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->preloadedView:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    .line 597
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 598
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected shouldScreenOffFinish()Z
    .locals 1

    .prologue
    .line 658
    const/4 v0, 0x0

    return v0
.end method
