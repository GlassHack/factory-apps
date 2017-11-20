.class public Lcom/google/glass/search/SearchFromQueryActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "SearchFromQueryActivity.java"


# instance fields
.field private lastIntent:Landroid/content/Intent;

.field private locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private progressSlider:Lcom/google/glass/widget/SliderView;

.field private query:Ljava/lang/String;

.field private queryTextView:Landroid/widget/TextView;

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 37
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/search/SearchFromQueryActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 51
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/search/SearchFromQueryActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/search/SearchFromQueryActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/SearchFromQueryActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/search/SearchFromQueryActivity;->query:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/search/SearchFromQueryActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/SearchFromQueryActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/search/SearchFromQueryActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/search/SearchFromQueryActivity;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/SearchFromQueryActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/search/SearchFromQueryActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/search/SearchFromQueryActivity;)Lcom/google/glass/widget/SliderView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/SearchFromQueryActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/search/SearchFromQueryActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    return-object v0
.end method


# virtual methods
.method doSearch(Ljava/lang/String;)V
    .locals 4
    .param p1, "q"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 177
    iget-object v2, p0, Lcom/google/glass/search/SearchFromQueryActivity;->queryTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    move-object v0, p0

    .line 179
    .local v0, "activity":Lcom/google/glass/search/SearchFromQueryActivity;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/google/glass/search/SearchFromQueryActivity;->getDirectGwsRequest()Lcom/google/glass/voice/network/DirectGwsRequest;

    move-result-object v1

    .line 182
    .local v1, "directGwsRequest":Lcom/google/glass/voice/network/DirectGwsRequest;
    iget-object v2, p0, Lcom/google/glass/search/SearchFromQueryActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    if-eqz v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/google/glass/search/SearchFromQueryActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v2}, Lcom/google/glass/widget/SliderView;->startIndeterminate()V

    .line 185
    :cond_0
    const/4 v2, 0x1

    new-instance v3, Lcom/google/glass/search/SearchFromQueryActivity$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/google/glass/search/SearchFromQueryActivity$1;-><init>(Lcom/google/glass/search/SearchFromQueryActivity;Ljava/lang/String;Lcom/google/glass/search/SearchFromQueryActivity;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/glass/voice/network/DirectGwsRequest;->sendGwsRequest(Ljava/lang/String;ZLcom/google/glass/voice/network/GwsResponseHandler;)V

    .line 237
    iget-object v2, p0, Lcom/google/glass/search/SearchFromQueryActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->SEARCH_FROM_QUERY_SENT_REQUEST:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 239
    .end local v1    # "directGwsRequest":Lcom/google/glass/voice/network/DirectGwsRequest;
    :cond_1
    return-void
.end method

.method protected getDirectGwsRequest()Lcom/google/glass/voice/network/DirectGwsRequest;
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lcom/google/glass/voice/network/DirectGwsRequest;

    invoke-virtual {p0}, Lcom/google/glass/search/SearchFromQueryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/search/SearchFromQueryActivity;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/network/DirectGwsRequest;-><init>(Landroid/content/Context;Lcom/google/glass/location/LocationManagerHelper;)V

    return-object v0
.end method

.method protected isCurrentQuery(Ljava/lang/String;)Z
    .locals 1
    .param p1, "q"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/glass/search/SearchFromQueryActivity;->query:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 59
    sget v1, Lcom/google/glass/search/R$id;->progress_slider:I

    invoke-virtual {p0, v1}, Lcom/google/glass/search/SearchFromQueryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/SliderView;

    iput-object v1, p0, Lcom/google/glass/search/SearchFromQueryActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    .line 60
    sget v1, Lcom/google/glass/search/R$id;->query_text_view:I

    invoke-virtual {p0, v1}, Lcom/google/glass/search/SearchFromQueryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/glass/search/SearchFromQueryActivity;->queryTextView:Landroid/widget/TextView;

    .line 62
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/google/glass/search/SearchFromQueryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 63
    .local v0, "locationManager":Landroid/location/LocationManager;
    new-instance v1, Lcom/google/glass/location/LocationManagerHelper;

    iget-object v2, p0, Lcom/google/glass/search/SearchFromQueryActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 64
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/glass/location/LocationManagerHelper;-><init>(Landroid/location/LocationManager;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/time/Clock;)V

    iput-object v1, p0, Lcom/google/glass/search/SearchFromQueryActivity;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    .line 65
    return-void
.end method

.method protected onHtmlAnswerCardResult(Ljava/lang/String;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 123
    iget-object v1, p0, Lcom/google/glass/search/SearchFromQueryActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "onHtmlAnswerCardResult"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iget-object v1, p0, Lcom/google/glass/search/SearchFromQueryActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/google/glass/search/SearchFromQueryActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v1}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/google/glass/search/SearchFromQueryActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->SEARCH_FROM_QUERY_GOT_RESULTS:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 132
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/google/glass/voice/VoiceSearchResultsHelper;->newResultsIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 133
    .local v0, "answer":Landroid/content/Intent;
    const-string v1, "recognitionResult"

    iget-object v2, p0, Lcom/google/glass/search/SearchFromQueryActivity;->query:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v1, "trigger_method"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 137
    const-string v1, "source"

    const-string v2, "queryActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, v0}, Lcom/google/glass/search/SearchFromQueryActivity;->startActivity(Landroid/content/Intent;)V

    .line 142
    invoke-virtual {p0}, Lcom/google/glass/search/SearchFromQueryActivity;->finish()V

    .line 143
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/google/glass/search/SearchFromQueryActivity;->setIntent(Landroid/content/Intent;)V

    .line 73
    return-void
.end method

.method protected onNoResults()V
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 147
    iget-object v0, p0, Lcom/google/glass/search/SearchFromQueryActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onNoResults"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/google/glass/search/SearchFromQueryActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/google/glass/search/SearchFromQueryActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 153
    iget-object v0, p0, Lcom/google/glass/search/SearchFromQueryActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->SEARCH_FROM_QUERY_NO_RESULTS:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 157
    new-instance v0, Lcom/google/glass/app/GlassError;

    invoke-direct {v0}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v1, Lcom/google/glass/search/R$string;->voice_search_no_answer:I

    .line 158
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    .line 159
    invoke-virtual {v0, v3}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    .line 160
    invoke-virtual {v0, v3}, Lcom/google/glass/app/GlassError;->setAutoHide(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/app/GlassError;->show(Landroid/content/Context;)V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/search/SearchFromQueryActivity;->finish()V

    goto :goto_0
.end method

.method public onPauseInternal()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPauseInternal()V

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/search/SearchFromQueryActivity;->query:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcom/google/glass/search/SearchFromQueryActivity;->finish()V

    .line 101
    return-void
.end method

.method protected onResumeInternal()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 79
    invoke-virtual {p0}, Lcom/google/glass/search/SearchFromQueryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 80
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/glass/search/SearchFromQueryActivity;->lastIntent:Landroid/content/Intent;

    if-ne v1, v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 84
    :cond_0
    iput-object v0, p0, Lcom/google/glass/search/SearchFromQueryActivity;->lastIntent:Landroid/content/Intent;

    .line 86
    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/search/SearchFromQueryActivity;->query:Ljava/lang/String;

    .line 87
    iget-object v1, p0, Lcom/google/glass/search/SearchFromQueryActivity;->query:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/google/glass/search/SearchFromQueryActivity;->finish()V

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/google/glass/search/SearchFromQueryActivity;->query:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/glass/search/SearchFromQueryActivity;->doSearch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 106
    sget v0, Lcom/google/glass/search/R$layout;->search_from_query_activity:I

    return v0
.end method

.method setQueryForTest(Ljava/lang/String;)V
    .locals 0
    .param p1, "q"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 243
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 244
    iput-object p1, p0, Lcom/google/glass/search/SearchFromQueryActivity;->query:Ljava/lang/String;

    .line 245
    return-void
.end method

.method setQueryTextViewForTest(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 249
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 250
    iput-object p1, p0, Lcom/google/glass/search/SearchFromQueryActivity;->queryTextView:Landroid/widget/TextView;

    .line 251
    return-void
.end method
