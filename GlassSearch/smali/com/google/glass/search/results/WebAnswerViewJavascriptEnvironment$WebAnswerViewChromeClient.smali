.class Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebAnswerViewJavascriptEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebAnswerViewChromeClient"
.end annotation


# instance fields
.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;


# direct methods
.method constructor <init>(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 514
    const-string v0, "GlassJavascriptBridge"

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method static synthetic access$1500(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;->makeCardLocator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private logMessage(Landroid/webkit/ConsoleMessage$MessageLevel;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "level"    # Landroid/webkit/ConsoleMessage$MessageLevel;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "lineNumber"    # I

    .prologue
    .line 566
    invoke-direct {p0, p3}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;->makeLineLocator(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;->logMessage(Landroid/webkit/ConsoleMessage$MessageLevel;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private logMessage(Landroid/webkit/ConsoleMessage$MessageLevel;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "level"    # Landroid/webkit/ConsoleMessage$MessageLevel;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "locator"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 542
    sget-object v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$2;->$SwitchMap$android$webkit$ConsoleMessage$MessageLevel:[I

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 559
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "The next log message (from %s) had unknown log level %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p3, v2, v4

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 560
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "(%s) %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p3, v2, v4

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    :goto_0
    return v3

    .line 544
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "(%s) %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p3, v2, v4

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 547
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "(%s) %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p3, v2, v4

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 550
    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "(%s) %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p3, v2, v4

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 553
    :pswitch_3
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "(%s) %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p3, v2, v4

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 556
    :pswitch_4
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "(%s) %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p3, v2, v4

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 542
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private makeCardLocator()Ljava/lang/String;
    .locals 8

    .prologue
    .line 522
    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v2}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$600(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/search/results/WebAnswerView;->getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 523
    .local v1, "timelineItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-nez v1, :cond_0

    const-string v2, "?"

    .line 524
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    .line 525
    invoke-static {v3}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$1800(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    .line 526
    invoke-static {v4}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$1900(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "bundleLocator":Ljava/lang/String;
    return-object v0

    .line 524
    .end local v0    # "bundleLocator":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private makeLineLocator(I)Ljava/lang/String;
    .locals 3
    .param p1, "lineNumber"    # I

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;->makeCardLocator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 3
    .param p1, "msg"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 575
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;->logMessage(Landroid/webkit/ConsoleMessage$MessageLevel;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 584
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$2000(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient$1;

    invoke-direct {v2, p0, p4}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient$1;-><init>(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;Landroid/webkit/JsResult;)V

    .line 585
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 591
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 592
    const/4 v0, 0x1

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 602
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$2000(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient$3;

    invoke-direct {v2, p0, p4}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient$3;-><init>(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;Landroid/webkit/JsResult;)V

    .line 603
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient$2;

    invoke-direct {v2, p0, p4}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient$2;-><init>(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;Landroid/webkit/JsResult;)V

    .line 609
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 615
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 616
    const/4 v0, 0x1

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    const/4 v2, 0x0

    .line 626
    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v1, p5}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$2102(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;Landroid/webkit/JsPromptResult;)Landroid/webkit/JsPromptResult;

    .line 628
    new-instance v0, Lcom/google/glass/voice/VoiceAnnotationHelper;

    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$2000(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceAnnotationHelper;-><init>(Landroid/app/Activity;)V

    .line 629
    .local v0, "helper":Lcom/google/glass/voice/VoiceAnnotationHelper;
    const/16 v1, 0xa

    const/4 v4, 0x0

    move-object v3, p3

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/voice/VoiceAnnotationHelper;->startAnnotationForResultWithCustomHeader(IZLjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 633
    const/4 v1, 0x1

    return v1
.end method
