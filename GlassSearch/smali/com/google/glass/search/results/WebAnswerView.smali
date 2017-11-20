.class public Lcom/google/glass/search/results/WebAnswerView;
.super Landroid/widget/LinearLayout;
.source "WebAnswerView.java"

# interfaces
.implements Lcom/google/glass/search/results/WebAnswerCard;
.implements Lcom/google/glass/search/results/SearchPagedWebView$OnPageFocusChangeListener;
.implements Lcom/google/glass/search/results/SearchPagedWebView$OnPageTappedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/search/results/WebAnswerView$1;,
        Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewSlaveViewportView;,
        Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;,
        Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;,
        Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;
    }
.end annotation


# static fields
.field private static final NUM_LOADS_PENDING_KEY:Ljava/lang/String; = "loads_pending"

.field public static final REQUEST_CODE_FOLLOW_ON_CARDS_CALLBACK:I = 0xb

.field public static final REQUEST_CODE_VOICE_ANNOTATION:I = 0xa

.field private static final VIEWPORT_TAG:Ljava/lang/String; = "<meta name=\"viewport\" content=\"width=device-width, height=device-height"

.field static glassJs:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private allowingNetworkDownloads:Z

.field private final baseUrl:Ljava/lang/String;

.field private cardIndex:Ljava/lang/String;

.field clientData:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private container:Landroid/widget/FrameLayout;

.field private final context:Landroid/content/Context;

.field private displayContext:Ljava/lang/String;

.field private final endOfSpeechTime:J

.field jsEnvironment:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final menuCallback:Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;

.field private pageStartTime:J

.field private preparedOptionsRevision:I

.field private final resourceLoadTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/deferredcontent/LoadingTask",
            "<*>;>;"
        }
    .end annotation
.end field

.field private selectedCardIndex:I

.field private final slaveViewports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewSlaveViewportView;",
            ">;"
        }
    .end annotation
.end field

.field private volatile timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private viewportCountListener:Lcom/google/glass/search/results/ViewportHostingWebView$ViewportCountListener;

.field webView:Landroid/webkit/WebView;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field webViewClient:Landroid/webkit/WebViewClient;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/search/results/WebAnswerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/search/results/WebAnswerView;->glassJs:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p3, "menuCallback"    # Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;
    .param p4, "cardIndex"    # Ljava/lang/String;
    .param p5, "displayContext"    # Ljava/lang/String;
    .param p6, "baseUrl"    # Ljava/lang/String;
    .param p7, "endOfSpeechTime"    # J

    .prologue
    const/4 v2, 0x0

    .line 169
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 108
    iput-object v2, p0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    .line 110
    iput-object v2, p0, Lcom/google/glass/search/results/WebAnswerView;->container:Landroid/widget/FrameLayout;

    .line 111
    iput-object v2, p0, Lcom/google/glass/search/results/WebAnswerView;->webViewClient:Landroid/webkit/WebViewClient;

    .line 113
    iput-object v2, p0, Lcom/google/glass/search/results/WebAnswerView;->jsEnvironment:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    .line 116
    const-string v1, "?"

    iput-object v1, p0, Lcom/google/glass/search/results/WebAnswerView;->cardIndex:Ljava/lang/String;

    .line 118
    const-string v1, "?"

    iput-object v1, p0, Lcom/google/glass/search/results/WebAnswerView;->displayContext:Ljava/lang/String;

    .line 131
    iput-object v2, p0, Lcom/google/glass/search/results/WebAnswerView;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/search/results/WebAnswerView;->resourceLoadTasks:Ljava/util/List;

    .line 137
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/glass/search/results/WebAnswerView;->preparedOptionsRevision:I

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/search/results/WebAnswerView;->slaveViewports:Ljava/util/List;

    .line 150
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/glass/search/results/WebAnswerView;->selectedCardIndex:I

    .line 160
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/glass/search/results/WebAnswerView;->pageStartTime:J

    .line 170
    iput-object p1, p0, Lcom/google/glass/search/results/WebAnswerView;->context:Landroid/content/Context;

    .line 171
    iput-object p2, p0, Lcom/google/glass/search/results/WebAnswerView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 172
    iput-object p3, p0, Lcom/google/glass/search/results/WebAnswerView;->menuCallback:Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;

    .line 173
    iput-object p4, p0, Lcom/google/glass/search/results/WebAnswerView;->cardIndex:Ljava/lang/String;

    .line 174
    iput-object p5, p0, Lcom/google/glass/search/results/WebAnswerView;->displayContext:Ljava/lang/String;

    .line 175
    iput-object p6, p0, Lcom/google/glass/search/results/WebAnswerView;->baseUrl:Ljava/lang/String;

    .line 176
    iput-wide p7, p0, Lcom/google/glass/search/results/WebAnswerView;->endOfSpeechTime:J

    .line 177
    invoke-direct {p0}, Lcom/google/glass/search/results/WebAnswerView;->init()V

    .line 178
    invoke-static {p1}, Lcom/google/glass/search/VoiceSearchResultsActivity;->isPwavEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    new-instance v1, Lcom/google/glass/search/results/SearchPagedWebView;

    invoke-direct {v1, p1}, Lcom/google/glass/search/results/SearchPagedWebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    .line 180
    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 181
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    check-cast v0, Lcom/google/glass/search/results/SearchPagedWebView;

    .line 182
    .local v0, "pagedView":Lcom/google/glass/search/results/SearchPagedWebView;
    invoke-virtual {v0, p0}, Lcom/google/glass/search/results/SearchPagedWebView;->setPageFocusChangeListener(Lcom/google/glass/search/results/SearchPagedWebView$OnPageFocusChangeListener;)V

    .line 183
    invoke-virtual {v0, p0}, Lcom/google/glass/search/results/SearchPagedWebView;->setPageTappedListener(Lcom/google/glass/search/results/SearchPagedWebView$OnPageTappedListener;)V

    .line 188
    .end local v0    # "pagedView":Lcom/google/glass/search/results/SearchPagedWebView;
    :goto_0
    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerView;->container:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 189
    return-void

    .line 185
    :cond_0
    new-instance v1, Lcom/google/glass/search/results/ViewportHostingWebView;

    invoke-direct {v1, p1}, Lcom/google/glass/search/results/ViewportHostingWebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    .line 186
    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    check-cast v1, Lcom/google/glass/search/results/ViewportHostingWebView;

    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerView;->viewportCountListener:Lcom/google/glass/search/results/ViewportHostingWebView$ViewportCountListener;

    invoke-virtual {v1, v2}, Lcom/google/glass/search/results/ViewportHostingWebView;->setViewportCountListener(Lcom/google/glass/search/results/ViewportHostingWebView$ViewportCountListener;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/google/glass/search/results/WebAnswerView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/search/results/WebAnswerView;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/glass/search/results/WebAnswerView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/glass/search/results/WebAnswerView;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/google/glass/search/results/WebAnswerView;->isFirstPartyUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/google/glass/search/results/WebAnswerView;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/google/glass/search/results/WebAnswerView;->dispatchSetSelected(IZ)V

    return-void
.end method

.method static synthetic access$400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/google/glass/search/results/WebAnswerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/search/results/WebAnswerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerView;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/google/glass/search/results/WebAnswerView;->allowingNetworkDownloads:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/glass/search/results/WebAnswerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerView;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/google/glass/search/results/WebAnswerView;->allowingNetworkDownloads:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/glass/search/results/WebAnswerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerView;

    .prologue
    .line 83
    iget v0, p0, Lcom/google/glass/search/results/WebAnswerView;->selectedCardIndex:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/glass/search/results/WebAnswerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerView;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/google/glass/search/results/WebAnswerView;->countPendingLoadTasks()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/glass/search/results/WebAnswerView;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerView;

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/google/glass/search/results/WebAnswerView;->endOfSpeechTime:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/google/glass/search/results/WebAnswerView;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerView;

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/google/glass/search/results/WebAnswerView;->pageStartTime:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/google/glass/search/results/WebAnswerView;J)J
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerView;
    .param p1, "x1"    # J

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/google/glass/search/results/WebAnswerView;->pageStartTime:J

    return-wide p1
.end method

.method private countPendingLoadTasks()I
    .locals 5

    .prologue
    .line 811
    const/4 v0, 0x0

    .line 812
    .local v0, "numPending":I
    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerView;->resourceLoadTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/deferredcontent/LoadingTask;

    .line 813
    .local v1, "task":Lcom/google/glass/deferredcontent/LoadingTask;, "Lcom/google/glass/deferredcontent/LoadingTask<*>;"
    invoke-virtual {v1}, Lcom/google/glass/deferredcontent/LoadingTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v3, v4, :cond_0

    .line 814
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 817
    .end local v1    # "task":Lcom/google/glass/deferredcontent/LoadingTask;, "Lcom/google/glass/deferredcontent/LoadingTask<*>;"
    :cond_1
    return v0
.end method

.method private createSlaveCardViewport(I)Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewSlaveViewportView;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 342
    new-instance v0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewSlaveViewportView;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewSlaveViewportView;-><init>(Lcom/google/glass/search/results/WebAnswerView;Lcom/google/glass/search/results/WebAnswerView;I)V

    return-object v0
.end method

.method private dispatchSetSelected(IZ)V
    .locals 2
    .param p1, "cardIndex"    # I
    .param p2, "selected"    # Z

    .prologue
    .line 499
    if-eqz p2, :cond_3

    .line 500
    iput p1, p0, Lcom/google/glass/search/results/WebAnswerView;->selectedCardIndex:I

    .line 504
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->context:Landroid/content/Context;

    .line 505
    invoke-static {v0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->isPwavEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    instance-of v0, v0, Lcom/google/glass/search/results/ViewportHostingWebView;

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    check-cast v0, Lcom/google/glass/search/results/ViewportHostingWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/search/results/ViewportHostingWebView;->drawViewport(IZ)V

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->jsEnvironment:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->jsEnvironment:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-virtual {v0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->isReady()Z

    move-result v0

    if-nez v0, :cond_4

    .line 517
    :cond_2
    :goto_1
    return-void

    .line 501
    :cond_3
    iget v0, p0, Lcom/google/glass/search/results/WebAnswerView;->selectedCardIndex:I

    if-ne p1, v0, :cond_0

    .line 502
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/search/results/WebAnswerView;->selectedCardIndex:I

    goto :goto_0

    .line 512
    :cond_4
    if-eqz p2, :cond_5

    .line 513
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->jsEnvironment:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-virtual {v0, p1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->sendFocusEvent(I)V

    goto :goto_1

    .line 515
    :cond_5
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->jsEnvironment:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-virtual {v0, p1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->sendBlurEvent(I)V

    goto :goto_1
.end method

.method private getDefaultMenuActionImplementations()Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;
    .locals 2

    .prologue
    .line 536
    new-instance v0, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;-><init>(Lcom/google/glass/search/results/WebAnswerView;Lcom/google/glass/search/results/WebAnswerView$1;)V

    return-object v0
.end method

.method private getSlaveViewport(I)Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewSlaveViewportView;
    .locals 5
    .param p1, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 322
    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    check-cast v1, Lcom/google/glass/search/results/ViewportHostingWebView;

    .line 326
    .local v1, "masterViewport":Lcom/google/glass/search/results/ViewportHostingWebView;
    invoke-virtual {v1}, Lcom/google/glass/search/results/ViewportHostingWebView;->getCardCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 327
    .local v2, "maxCardIndex":I
    const/4 v4, 0x1

    if-lt p1, v4, :cond_0

    if-le p1, v2, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-object v3

    .line 331
    :cond_1
    iget-object v4, p0, Lcom/google/glass/search/results/WebAnswerView;->slaveViewports:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "extraIndex":I
    :goto_1
    if-gt v0, p1, :cond_2

    .line 332
    iget-object v4, p0, Lcom/google/glass/search/results/WebAnswerView;->slaveViewports:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 335
    :cond_2
    iget-object v3, p0, Lcom/google/glass/search/results/WebAnswerView;->slaveViewports:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 336
    iget-object v3, p0, Lcom/google/glass/search/results/WebAnswerView;->slaveViewports:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/glass/search/results/WebAnswerView;->createSlaveCardViewport(I)Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewSlaveViewportView;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_3
    iget-object v3, p0, Lcom/google/glass/search/results/WebAnswerView;->slaveViewports:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewSlaveViewportView;

    goto :goto_0
.end method

.method private getViewportTag()Ljava/lang/String;
    .locals 5

    .prologue
    .line 240
    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerView;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/glass/search/VoiceSearchResultsActivity;->isPwavEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 242
    .local v0, "display":Landroid/util/DisplayMetrics;
    const v2, 0x3ea8f5c3    # 0.33f

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v2, v3

    .line 243
    .local v1, "viewportMinScale":F
    const-string v2, "<meta name=\"viewport\" content=\"width=device-width, height=device-height,minimum-scale="

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x11

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    .end local v0    # "display":Landroid/util/DisplayMetrics;
    .end local v1    # "viewportMinScale":F
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "<meta name=\"viewport\" content=\"width=device-width, height=device-height,initial-scale=0.666666\">"

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 212
    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerView;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 213
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/google/glass/search/R$layout;->voice_search_web_answer_lazy:I

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 214
    sget v2, Lcom/google/glass/search/R$id;->container:I

    invoke-virtual {p0, v2}, Lcom/google/glass/search/results/WebAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/google/glass/search/results/WebAnswerView;->container:Landroid/widget/FrameLayout;

    .line 215
    invoke-direct {p0}, Lcom/google/glass/search/results/WebAnswerView;->loadJs()V

    .line 217
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 219
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v1}, Lcom/google/glass/search/results/WebAnswerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    return-void
.end method

.method private isFirstPartyUrl(Ljava/lang/String;)Z
    .locals 4
    .param p1, "urlStr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 821
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 828
    :goto_0
    return v2

    .line 825
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 826
    .local v1, "url":Ljava/net/URL;
    invoke-static {v1}, Lcom/google/glass/voice/network/SearchQueryBuilder;->isGwsUrl(Ljava/net/URL;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 827
    .end local v1    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 828
    .local v0, "e":Ljava/net/MalformedURLException;
    goto :goto_0
.end method

.method private loadDataIntoWebView()V
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/search/results/WebAnswerView;->loadDataIntoWebView(Z)V

    .line 347
    return-void
.end method

.method private loadDataIntoWebView(Z)V
    .locals 6
    .param p1, "allowNetwork"    # Z

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 365
    :goto_0
    return-void

    .line 355
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/glass/search/results/WebAnswerView;->setupWebView(Z)V

    .line 356
    invoke-virtual {p0}, Lcom/google/glass/search/results/WebAnswerView;->getData()Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, "fullData":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    instance-of v0, v0, Lcom/google/glass/search/results/ViewportHostingWebView;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    check-cast v0, Lcom/google/glass/search/results/ViewportHostingWebView;

    invoke-virtual {v0}, Lcom/google/glass/search/results/ViewportHostingWebView;->trackLoadPageForLogging()V

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/google/glass/search/results/WebAnswerView;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadJs()V
    .locals 5

    .prologue
    .line 443
    sget-object v2, Lcom/google/glass/search/results/WebAnswerView;->glassJs:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 454
    :goto_0
    return-void

    .line 447
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "cards_compiled.js"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 448
    .local v1, "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v2}, Lcom/google/common/io/CharStreams;->toString(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/glass/search/results/WebAnswerView;->glassJs:Ljava/lang/String;

    .line 449
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 450
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 451
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/google/glass/search/results/WebAnswerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to load Glass JS"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    const/4 v2, 0x0

    sput-object v2, Lcom/google/glass/search/results/WebAnswerView;->glassJs:Ljava/lang/String;

    goto :goto_0
.end method

.method private onPromptResult(ILjava/lang/String;)V
    .locals 1
    .param p1, "cardIndex"    # I
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->jsEnvironment:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->onPromptResult(ILjava/lang/String;)V

    .line 413
    return-void
.end method


# virtual methods
.method public dispatchSetSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 489
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchSetSelected(Z)V

    .line 490
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/glass/search/results/WebAnswerView;->dispatchSetSelected(IZ)V

    .line 491
    return-void
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 6

    .prologue
    .line 225
    const-string v0, ""

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    const-string v1, "<html><head><style>"

    sget-object v2, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;->glassCss:Ljava/lang/String;

    .line 226
    invoke-static {v2}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xe

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "</style><script>"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/google/glass/search/results/WebAnswerView;->glassJs:Ljava/lang/String;

    .line 227
    invoke-static {v5}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "</script>"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "<script>"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "try {"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "  AutoSizer.init(function(){});"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "} catch (e) {"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "  console.error(\'exception calling AutoSizer.init: \' + e.message);"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "}"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "</script>"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    .line 235
    invoke-direct {p0}, Lcom/google/glass/search/results/WebAnswerView;->getViewportTag()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "</head><body>"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/google/glass/search/results/WebAnswerView;->clientData:Ljava/lang/String;

    .line 236
    invoke-static {v5}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "</body></html>"

    aput-object v5, v3, v4

    .line 225
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMasterAnswerView()Lcom/google/glass/search/results/WebAnswerView;
    .locals 0

    .prologue
    .line 194
    return-object p0
.end method

.method public getSelectedCardIndex()I
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Lcom/google/glass/search/results/WebAnswerView;->selectedCardIndex:I

    return v0
.end method

.method public getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method public getViewportCard(I)Lcom/google/glass/search/results/WebAnswerCard;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 306
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    instance-of v0, v0, Lcom/google/glass/search/results/ViewportHostingWebView;

    if-nez v0, :cond_1

    .line 309
    .end local p0    # "this":Lcom/google/glass/search/results/WebAnswerView;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/google/glass/search/results/WebAnswerView;
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/glass/search/results/WebAnswerView;->getSlaveViewport(I)Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewSlaveViewportView;

    move-result-object p0

    goto :goto_0
.end method

.method public getViewportIndex()I
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public getViewportView(I)Landroid/view/View;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 315
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    instance-of v0, v0, Lcom/google/glass/search/results/ViewportHostingWebView;

    if-nez v0, :cond_1

    .line 318
    .end local p0    # "this":Lcom/google/glass/search/results/WebAnswerView;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/google/glass/search/results/WebAnswerView;
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/glass/search/results/WebAnswerView;->getSlaveViewport(I)Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewSlaveViewportView;

    move-result-object p0

    goto :goto_0
.end method

.method protected getWebAnswerViewClient(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;
    .locals 10
    .param p1, "jsEnvironment"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 397
    new-instance v0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;

    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerView;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/glass/search/results/WebAnswerView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    iget-object v4, p0, Lcom/google/glass/search/results/WebAnswerView;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 398
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerView;->context:Landroid/content/Context;

    .line 399
    invoke-static {v1}, Lcom/google/glass/maps/MapHelper;->getInstance(Landroid/content/Context;)Lcom/google/glass/maps/MapHelper;

    move-result-object v6

    invoke-static {}, Lcom/google/glass/mosaic/MosaicHelper;->getInstance()Lcom/google/glass/mosaic/MosaicHelper;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/search/results/WebAnswerView;->resourceLoadTasks:Ljava/util/List;

    move-object v1, p0

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;-><init>(Lcom/google/glass/search/results/WebAnswerView;Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/maps/MapHelper;Lcom/google/glass/mosaic/MosaicHelper;Ljava/util/List;Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)V

    return-object v0
.end method

.method public isJavascriptActive()Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->jsEnvironment:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->jsEnvironment:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-virtual {v0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyInvisible()V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->jsEnvironment:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->jsEnvironment:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-virtual {v0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->notifyInvisible()V

    .line 529
    :cond_0
    return-void
.end method

.method public notifyVisible()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->jsEnvironment:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->jsEnvironment:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-virtual {v0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->notifyVisible()V

    .line 523
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(I)Z
    .locals 1
    .param p1, "menuItemId"    # I

    .prologue
    .line 476
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/glass/search/results/WebAnswerView;->onOptionsItemSelected(II)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(II)Z
    .locals 2
    .param p1, "cardIndex"    # I
    .param p2, "menuItemId"    # I

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->jsEnvironment:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-virtual {v0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    const/4 v0, 0x0

    .line 484
    :goto_0
    return v0

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->jsEnvironment:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    iget v1, p0, Lcom/google/glass/search/results/WebAnswerView;->preparedOptionsRevision:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->invokeMenuOption(III)V

    .line 484
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPageFocusChange(IZ)V
    .locals 0
    .param p1, "page"    # I
    .param p2, "selected"    # Z

    .prologue
    .line 495
    invoke-direct {p0, p1, p2}, Lcom/google/glass/search/results/WebAnswerView;->dispatchSetSelected(IZ)V

    .line 496
    return-void
.end method

.method public onPageTapped(I)Z
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 417
    invoke-virtual {p0, p1}, Lcom/google/glass/search/results/WebAnswerView;->requestMenu(I)Z

    move-result v0

    return v0
.end method

.method public onPrepareMenu(ZILjava/util/List;)Z
    .locals 1
    .param p1, "voiceMenu"    # Z
    .param p2, "cardIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/widget/MenuItemDescriptor;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 464
    .local p3, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/widget/MenuItemDescriptor;>;"
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->jsEnvironment:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-virtual {v0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->jsEnvironment:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-virtual {v0, p1, p3, p2}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->getOptions(ZLjava/util/List;I)I

    move-result v0

    iput v0, p0, Lcom/google/glass/search/results/WebAnswerView;->preparedOptionsRevision:I

    .line 468
    const/4 v0, 0x1

    .line 470
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareMenu(ZLjava/util/List;)Z
    .locals 1
    .param p1, "voiceMenu"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/widget/MenuItemDescriptor;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 459
    .local p2, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/widget/MenuItemDescriptor;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/glass/search/results/WebAnswerView;->onPrepareMenu(ZILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public onPromptResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 408
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/glass/search/results/WebAnswerView;->onPromptResult(ILjava/lang/String;)V

    .line 409
    return-void
.end method

.method public reloadData()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->clientData:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/glass/search/results/WebAnswerView;->setData(Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public requestMenu()Z
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/search/results/WebAnswerView;->requestMenu(I)Z

    move-result v0

    return v0
.end method

.method public requestMenu(I)Z
    .locals 2
    .param p1, "cardIndex"    # I

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->jsEnvironment:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-virtual {v0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->jsEnvironment:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-direct {p0}, Lcom/google/glass/search/results/WebAnswerView;->getDefaultMenuActionImplementations()Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->setDefaultMenuBehaviors(Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;)V

    .line 431
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->jsEnvironment:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerView;->menuCallback:Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->requestMenu(ILcom/google/glass/search/results/WebAnswerCard$MenuCallback;)V

    .line 432
    const/4 v0, 0x1

    .line 436
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/google/glass/search/results/WebAnswerView;->clientData:Ljava/lang/String;

    .line 373
    sget-object v0, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;->glassCss:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 375
    invoke-static {p0}, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;->refreshAfterLoad(Lcom/google/glass/search/results/WebAnswerView;)V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 381
    invoke-direct {p0}, Lcom/google/glass/search/results/WebAnswerView;->loadDataIntoWebView()V

    goto :goto_0
.end method

.method public setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/glass/search/results/WebAnswerView;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 205
    return-void
.end method

.method public setViewportCountListener(Lcom/google/glass/search/results/ViewportHostingWebView$ViewportCountListener;)V
    .locals 1
    .param p1, "l"    # Lcom/google/glass/search/results/ViewportHostingWebView$ViewportCountListener;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/google/glass/search/results/WebAnswerView;->viewportCountListener:Lcom/google/glass/search/results/ViewportHostingWebView$ViewportCountListener;

    .line 298
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    instance-of v0, v0, Lcom/google/glass/search/results/ViewportHostingWebView;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    check-cast v0, Lcom/google/glass/search/results/ViewportHostingWebView;

    invoke-virtual {v0, p1}, Lcom/google/glass/search/results/ViewportHostingWebView;->setViewportCountListener(Lcom/google/glass/search/results/ViewportHostingWebView$ViewportCountListener;)V

    .line 301
    :cond_0
    return-void
.end method

.method protected setupWebView(Z)V
    .locals 10
    .param p1, "allowNetwork"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 252
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 255
    :cond_0
    iput-boolean p1, p0, Lcom/google/glass/search/results/WebAnswerView;->allowingNetworkDownloads:Z

    .line 257
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 258
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 259
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 260
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v8

    .line 261
    .local v8, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v8, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 262
    invoke-virtual {v8, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 263
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->isPwavEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    invoke-virtual {v8, v9}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 265
    invoke-virtual {v8, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 266
    invoke-virtual {v8, v9}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 267
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 277
    :goto_1
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 279
    invoke-virtual {v8, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 281
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->jsEnvironment:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->jsEnvironment:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-virtual {v0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->disable()V

    .line 284
    :cond_1
    new-instance v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerView;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/glass/search/results/WebAnswerView;->cardIndex:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/glass/search/results/WebAnswerView;->displayContext:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/glass/search/results/WebAnswerView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    iget-wide v6, p0, Lcom/google/glass/search/results/WebAnswerView;->endOfSpeechTime:J

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;-><init>(Landroid/content/Context;Lcom/google/glass/search/results/WebAnswerView;Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/userevent/UserEventHelper;J)V

    iput-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->jsEnvironment:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    .line 286
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerView;->jsEnvironment:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-virtual {v1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 288
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v8, v9}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 290
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerView;->jsEnvironment:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-virtual {v1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->getJavascriptBridge()Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    move-result-object v1

    const-string v2, "glassBridge"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->jsEnvironment:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-virtual {p0, v0}, Lcom/google/glass/search/results/WebAnswerView;->getWebAnswerViewClient(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->webViewClient:Landroid/webkit/WebViewClient;

    .line 293
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto/16 :goto_0

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/webkit/WebView;->setPadding(IIII)V

    .line 271
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v8, v0}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 273
    invoke-virtual {v8, v9}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    goto/16 :goto_1
.end method
