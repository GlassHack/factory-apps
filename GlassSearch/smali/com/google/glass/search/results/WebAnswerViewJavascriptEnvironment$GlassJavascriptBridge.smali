.class Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;
.super Ljava/lang/Object;
.source "WebAnswerViewJavascriptEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlassJavascriptBridge"
.end annotation


# instance fields
.field private initializationState:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

.field private onOptionSelected_ActionSpec:Lorg/json/JSONObject;

.field private requestOptions_CardIndex:I

.field private requestOptions_MenuCallback:Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;

.field private requestOptions_RequestRevision:I

.field private requestOptions_ResponsePayload:Lorg/json/JSONArray;

.field private requestOptions_ResponseRevision:I

.field final synthetic this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;


# direct methods
.method constructor <init>(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)V
    .locals 3
    .param p1, "this$0"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 662
    iput-object p1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 663
    sget-object v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;->PENDING:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    iput-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->initializationState:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    .line 682
    iput v2, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->requestOptions_RequestRevision:I

    .line 684
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->requestOptions_CardIndex:I

    .line 685
    iput v2, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->requestOptions_ResponseRevision:I

    .line 686
    iput-object v1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->requestOptions_ResponsePayload:Lorg/json/JSONArray;

    .line 687
    iput-object v1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->requestOptions_MenuCallback:Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;

    .line 689
    iput-object v1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->onOptionSelected_ActionSpec:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    .prologue
    .line 662
    iget v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->requestOptions_CardIndex:I

    return v0
.end method

.method static synthetic access$1002(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;
    .param p1, "x1"    # I

    .prologue
    .line 662
    iput p1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->requestOptions_CardIndex:I

    return p1
.end method

.method static synthetic access$1200(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    .prologue
    .line 662
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->requestOptions_MenuCallback:Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;)Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;
    .param p1, "x1"    # Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;

    .prologue
    .line 662
    iput-object p1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->requestOptions_MenuCallback:Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 662
    iput-object p1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->onOptionSelected_ActionSpec:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    .prologue
    .line 662
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->initializationState:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;
    .param p1, "x1"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    .prologue
    .line 662
    iput-object p1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->initializationState:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    .prologue
    .line 662
    iget v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->requestOptions_RequestRevision:I

    return v0
.end method

.method static synthetic access$704(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    .prologue
    .line 662
    iget v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->requestOptions_RequestRevision:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->requestOptions_RequestRevision:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    .prologue
    .line 662
    iget v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->requestOptions_ResponseRevision:I

    return v0
.end method

.method static synthetic access$802(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;
    .param p1, "x1"    # I

    .prologue
    .line 662
    iput p1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->requestOptions_ResponseRevision:I

    return p1
.end method

.method static synthetic access$900(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    .prologue
    .line 662
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->requestOptions_ResponsePayload:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .prologue
    .line 662
    iput-object p1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->requestOptions_ResponsePayload:Lorg/json/JSONArray;

    return-object p1
.end method


# virtual methods
.method public confirmInitialization()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$1300(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$1300(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 694
    return-void
.end method

.method public doBlockingAjaxGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "urlStr"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 798
    const-string v0, "[0,\"\"]"

    .line 799
    .local v0, "badCall":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-virtual {v4, p1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->constructUrlRelativeToBase(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 800
    .local v2, "url":Ljava/net/URL;
    if-nez v2, :cond_0

    .line 801
    const-string v4, "[0,\"\"]"

    .line 809
    :goto_0
    return-object v4

    .line 803
    :cond_0
    iget-object v4, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-virtual {v4, v2}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->buildUrlConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 804
    .local v3, "urlConnection":Ljava/net/HttpURLConnection;
    if-nez v3, :cond_1

    .line 805
    const-string v4, "[0,\"\"]"

    goto :goto_0

    .line 808
    :cond_1
    iget-object v4, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-virtual {v4, v3, v2}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->readHttpResponseAsJsonArray(Ljava/net/HttpURLConnection;Ljava/net/URL;)Lorg/json/JSONArray;

    move-result-object v1

    .line 809
    .local v1, "result":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public drawFrame()V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 713
    iget-object v3, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v3}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$600(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerView;

    move-result-object v1

    .line 714
    .local v1, "webAnswerView":Lcom/google/glass/search/results/WebAnswerView;
    iget-object v2, v1, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    .line 715
    .local v2, "webView":Landroid/webkit/WebView;
    instance-of v3, v2, Lcom/google/glass/search/results/ViewportHostingWebView;

    if-nez v3, :cond_0

    .line 720
    :goto_0
    return-void

    :cond_0
    move-object v0, v2

    .line 718
    check-cast v0, Lcom/google/glass/search/results/ViewportHostingWebView;

    .line 719
    .local v0, "master":Lcom/google/glass/search/results/ViewportHostingWebView;
    invoke-virtual {v1}, Lcom/google/glass/search/results/WebAnswerView;->getSelectedCardIndex()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/google/glass/search/results/ViewportHostingWebView;->drawViewport(IZ)V

    goto :goto_0
.end method

.method public onLoad()V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 699
    .local v0, "eventTuple":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$000(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 700
    const-string v1, "time_from_eos"

    .line 702
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v4}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$000(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 700
    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 704
    :cond_0
    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$200(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_JS_ONLOAD:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 705
    return-void
.end method

.method public optionSelectedCB(Z)V
    .locals 6
    .param p1, "cancelled"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 739
    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-virtual {v2}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 740
    invoke-static {}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->initializationState:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2b

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Ignoring selected option response in state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 750
    :goto_0
    return-void

    .line 743
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 744
    .local v0, "params":Landroid/os/Bundle;
    if-nez p1, :cond_1

    .line 745
    const-string v2, "SPECS_KEY"

    iget-object v3, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->onOptionSelected_ActionSpec:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    :cond_1
    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v2}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$1300(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 748
    .local v1, "selectionResponse":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 749
    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v2}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$1300(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public postOptions(Ljava/lang/String;II)V
    .locals 6
    .param p1, "actionSpecs"    # Ljava/lang/String;
    .param p2, "cardIndex"    # I
    .param p3, "revision"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 724
    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-virtual {v2}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 725
    invoke-static {}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->initializationState:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x28

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Ignoring menu options response in state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 735
    :goto_0
    return-void

    .line 728
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 729
    .local v1, "params":Landroid/os/Bundle;
    const-string v2, "CARD_INDEX_KEY"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 730
    const-string v2, "REVISION_KEY"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 731
    const-string v2, "SPECS_KEY"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v2}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$1300(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 733
    .local v0, "optionsResponse":Landroid/os/Message;
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 734
    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v2}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$1300(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public preloadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 754
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$2000(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/glass/search/VoiceSearchResultsActivity;->preloadUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 755
    return-void
.end method

.method public showModalCardSetFromSource(Ljava/lang/String;)Z
    .locals 4
    .param p1, "glassContent"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 764
    iget-object v3, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v3}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$2000(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 781
    :goto_0
    return v2

    .line 767
    :cond_0
    invoke-static {p1, v2}, Lcom/google/glass/voice/VoiceSearchResultsHelper;->newResultsIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 768
    .local v1, "newCards":Landroid/content/Intent;
    const-string v2, "recognitionResult"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 769
    const-string v2, "trigger_method"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 771
    const-string v2, "source"

    const-string v3, "followOnCards"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 774
    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v2}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$600(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/search/results/WebAnswerView;->getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 775
    .local v0, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-eqz v0, :cond_1

    .line 776
    const-string v2, "timelineItemId"

    new-instance v3, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v3, v0}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 779
    :cond_1
    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v2}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$2000(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const/16 v3, 0xb

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 781
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public showModalCardSetFromUrl(Ljava/lang/String;)I
    .locals 7
    .param p1, "urlStr"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 814
    const/4 v0, 0x0

    .line 815
    .local v0, "badCallResponse":I
    iget-object v6, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-virtual {v6, p1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->constructUrlRelativeToBase(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 816
    .local v4, "url":Ljava/net/URL;
    if-nez v4, :cond_1

    .line 832
    .end local v0    # "badCallResponse":I
    :cond_0
    :goto_0
    return v0

    .line 819
    .restart local v0    # "badCallResponse":I
    :cond_1
    iget-object v6, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-virtual {v6, v4}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->buildUrlConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 820
    .local v5, "urlConnection":Ljava/net/HttpURLConnection;
    if-eqz v5, :cond_0

    .line 823
    invoke-static {v5}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$2200(Ljava/net/HttpURLConnection;)I

    move-result v1

    .line 824
    .local v1, "responseCode":I
    invoke-static {v1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$2300(I)Z

    move-result v6

    if-nez v6, :cond_2

    move v0, v1

    .line 825
    goto :goto_0

    .line 827
    :cond_2
    iget-object v6, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-virtual {v6, v5, v4}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->readHttpResponseAsString(Ljava/net/HttpURLConnection;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    .line 828
    .local v2, "result":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 831
    invoke-virtual {p0, v2}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->showModalCardSetFromSource(Ljava/lang/String;)Z

    move-result v3

    .line 832
    .local v3, "success":Z
    if-eqz v3, :cond_3

    .end local v1    # "responseCode":I
    :goto_1
    move v0, v1

    goto :goto_0

    .restart local v1    # "responseCode":I
    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method public writeToLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 837
    const-string v1, "msg"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 838
    .local v0, "eventTuple":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$200(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_JAVASCRIPT_ERROR:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 839
    return-void
.end method
