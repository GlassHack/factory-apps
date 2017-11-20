.class public Lcom/google/glass/search/results/AnswerCardProcessor;
.super Ljava/lang/Object;
.source "AnswerCardProcessor.java"


# static fields
.field static final ONE_WEBVIEW_STYLE_OVERRIDE:Ljava/lang/String; = "<style>article.gls-crd{position:relative !important;visibility:visible !important;}body{display:-webkit-box;}body{border:0 !important; margin:0 !important; padding:0 !important;}article{width:640px !important; height:360px !important; overflow:hidden !important;}</style>"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final baseUrl:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final eosTime:J

.field private final recognitionResult:Ljava/lang/String;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p3, "recognitionResult"    # Ljava/lang/String;
    .param p4, "baseUrl"    # Ljava/lang/String;
    .param p5, "eosTime"    # J

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/glass/search/results/AnswerCardProcessor;->context:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/google/glass/search/results/AnswerCardProcessor;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 57
    iput-object p3, p0, Lcom/google/glass/search/results/AnswerCardProcessor;->recognitionResult:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/google/glass/search/results/AnswerCardProcessor;->baseUrl:Ljava/lang/String;

    .line 59
    iput-wide p5, p0, Lcom/google/glass/search/results/AnswerCardProcessor;->eosTime:J

    .line 60
    return-void
.end method

.method private getParser()Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->USE_SAX_PARSER:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;

    invoke-direct {v0}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardSaxParser;-><init>()V

    .line 185
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;

    invoke-direct {v0}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardScanningExtractor;-><init>()V

    goto :goto_0
.end method

.method private processHtml(Ljava/lang/String;Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;ZZ)Lcom/google/glass/search/results/ResultsContainer;
    .locals 22
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "menuCallback"    # Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;
    .param p3, "isFromTimeline"    # Z
    .param p4, "isInBundle"    # Z

    .prologue
    .line 117
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v19

    .line 119
    .local v19, "startTime":J
    new-instance v10, Lcom/google/glass/search/results/ResultsContainer$Builder;

    invoke-direct {v10}, Lcom/google/glass/search/results/ResultsContainer$Builder;-><init>()V

    .line 120
    .local v10, "builder":Lcom/google/glass/search/results/ResultsContainer$Builder;
    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    sget-object v12, Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;->BUNDLE:Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;

    .line 123
    .local v12, "displayCtx":Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/search/results/AnswerCardProcessor;->getParser()Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v12, v0, v3}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser;->parseForContext(Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;Ljava/lang/String;Z)Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;

    move-result-object v18

    .line 124
    .local v18, "results":Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;
    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;->cards:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    :cond_0
    const/4 v2, 0x0

    .line 177
    :goto_1
    return-object v2

    .line 120
    .end local v12    # "displayCtx":Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;
    .end local v18    # "results":Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;
    :cond_1
    sget-object v12, Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;->COVER:Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;

    goto :goto_0

    :cond_2
    sget-object v12, Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;->INITIAL_SEARCH:Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;

    goto :goto_0

    .line 129
    .restart local v12    # "displayCtx":Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;
    .restart local v18    # "results":Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<html><head>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "<style>article.gls-crd{position:relative !important;visibility:visible !important;}body{display:-webkit-box;}body{border:0 !important; margin:0 !important; padding:0 !important;}article{width:640px !important; height:360px !important; overflow:hidden !important;}</style>"

    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</head><body>"

    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;->commonSectionSource:Ljava/lang/String;

    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 133
    .local v14, "fullSource":Ljava/lang/StringBuilder;
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;->cards:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/glass/search/results/HtmlAnswerCard;

    .line 134
    .local v11, "card":Lcom/google/glass/search/results/HtmlAnswerCard;
    iget-object v3, v11, Lcom/google/glass/search/results/HtmlAnswerCard;->displayHtml:Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 136
    .end local v11    # "card":Lcom/google/glass/search/results/HtmlAnswerCard;
    :cond_4
    const-string v2, "</body></html>"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v16

    .line 141
    .local v16, "parseTime":J
    new-instance v1, Lcom/google/glass/search/results/WebAnswerView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/search/results/AnswerCardProcessor;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/search/results/AnswerCardProcessor;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    const-string v5, "0"

    .line 145
    invoke-virtual {v12}, Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/glass/search/results/AnswerCardProcessor;->baseUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/glass/search/results/AnswerCardProcessor;->eosTime:J

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/search/results/WebAnswerView;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 148
    .local v1, "webview":Lcom/google/glass/search/results/WebAnswerView;
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/search/results/WebAnswerView;->setData(Ljava/lang/String;)V

    .line 151
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v10, v1, v2, v3}, Lcom/google/glass/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Ljava/util/List;Landroid/os/Bundle;)Lcom/google/glass/search/results/ResultsContainer$Builder;

    .line 153
    sget-object v2, Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;->COVER:Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;

    if-eq v12, v2, :cond_5

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;->autoplayTtsFormatString:Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;

    if-eqz v2, :cond_5

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;->autoplayTtsFormatString:Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;

    iget-object v2, v2, Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;->value:Ljava/lang/String;

    .line 154
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 155
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;->autoplayTtsFormatString:Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;

    iget-object v0, v2, Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;->value:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 156
    .local v21, "text":Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;->autoplayTtsFormatString:Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;

    iget-object v15, v2, Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;->lang:Ljava/lang/String;

    .line 157
    .local v15, "lang":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/search/results/AnswerCardProcessor;->context:Landroid/content/Context;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v21

    invoke-static {v2, v0, v15, v3}, Lcom/google/glass/timeline/TimelineHelper;->formatAndSpeakText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 160
    .end local v15    # "lang":Ljava/lang/String;
    .end local v21    # "text":Ljava/lang/String;
    :cond_5
    const-string v2, "type"

    const-string v3, "results"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "time"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 164
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v19

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "before"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 165
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "after"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 166
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "num_cards"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;->cards:Ljava/util/List;

    .line 167
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 160
    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTupleBuilder(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 168
    .local v13, "eventTuple":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/glass/search/results/AnswerCardProcessor;->eosTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    .line 169
    const-string v2, "time_from_eos"

    .line 171
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/google/glass/search/results/AnswerCardProcessor;->eosTime:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 169
    invoke-static {v13, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    const-string v2, "parse_time_from_eos"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/google/glass/search/results/AnswerCardProcessor;->eosTime:J

    sub-long v3, v16, v3

    .line 174
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 172
    invoke-static {v13, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/search/results/AnswerCardProcessor;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_PARSE_RESPONSE:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v10}, Lcom/google/glass/search/results/ResultsContainer$Builder;->build()Lcom/google/glass/search/results/ResultsContainer;

    move-result-object v2

    goto/16 :goto_1
.end method


# virtual methods
.method public process(Ljava/lang/String;Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;ZZ)Lcom/google/glass/search/results/ResultsContainer;
    .locals 5
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "menuCallback"    # Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;
    .param p3, "isFromTimeline"    # Z
    .param p4, "isInBundle"    # Z

    .prologue
    .line 102
    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/search/results/AnswerCardProcessor;->processHtml(Ljava/lang/String;Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;ZZ)Lcom/google/glass/search/results/ResultsContainer;

    move-result-object v1

    .line 104
    .local v1, "resultsContainer":Lcom/google/glass/search/results/ResultsContainer;
    if-eqz v1, :cond_0

    .line 112
    .end local v1    # "resultsContainer":Lcom/google/glass/search/results/ResultsContainer;
    :goto_0
    return-object v1

    .line 109
    .restart local v1    # "resultsContainer":Lcom/google/glass/search/results/ResultsContainer;
    :cond_0
    const-string v2, "query"

    iget-object v3, p0, Lcom/google/glass/search/results/AnswerCardProcessor;->recognitionResult:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "eventTuple":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/search/results/AnswerCardProcessor;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_NO_ANSWER:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v2, v3, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 112
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public processTimelineHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x0

    .line 67
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v4

    .line 69
    .local v4, "startTime":J
    invoke-direct {p0}, Lcom/google/glass/search/results/AnswerCardProcessor;->getParser()Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser;

    move-result-object v6

    sget-object v7, Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;->COVER:Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;

    invoke-virtual {v6, v7, p1, v12}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser;->parseForContext(Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;Ljava/lang/String;Z)Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;

    move-result-object v3

    .line 71
    .local v3, "results":Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;
    if-eqz v3, :cond_0

    iget-object v6, v3, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;->cards:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, v3, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;->cards:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-object v2

    .line 75
    :cond_1
    iget-object v6, v3, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;->cards:Ljava/util/List;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/search/results/HtmlAnswerCard;

    .line 76
    .local v0, "card":Lcom/google/glass/search/results/HtmlAnswerCard;
    if-eqz v0, :cond_0

    .line 79
    const-string v6, "<html><head><style>article.gls-crd{position:relative !important;visibility:visible !important;}body{display:-webkit-box;}body{border:0 !important; margin:0 !important; padding:0 !important;}article{width:640px !important; height:360px !important; overflow:hidden !important;}</style></head><body>"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;->commonSectionSource:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/google/glass/search/results/HtmlAnswerCard;->displayHtml:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0xe

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</body></html>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "fullCoverSource":Ljava/lang/String;
    const-string v6, "type"

    const-string v7, "timeline"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "time"

    aput-object v9, v8, v12

    const/4 v9, 0x1

    .line 87
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v10

    invoke-interface {v10}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "before"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "after"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    .line 89
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 83
    invoke-static {v6, v7, v8}, Lcom/google/glass/userevent/UserEventHelper;->createEventTupleBuilder(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 90
    .local v1, "eventTuple":Ljava/lang/StringBuilder;
    iget-wide v6, p0, Lcom/google/glass/search/results/AnswerCardProcessor;->eosTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 91
    const-string v6, "time_from_eos"

    .line 93
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/google/glass/search/results/AnswerCardProcessor;->eosTime:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 91
    invoke-static {v1, v6, v7}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    :cond_2
    iget-object v6, p0, Lcom/google/glass/search/results/AnswerCardProcessor;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v7, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_PARSE_RESPONSE:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
