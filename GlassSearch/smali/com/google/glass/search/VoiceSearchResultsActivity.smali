.class public Lcom/google/glass/search/VoiceSearchResultsActivity;
.super Lcom/google/glass/voice/GlassVoiceActivity;
.source "VoiceSearchResultsActivity.java"

# interfaces
.implements Lcom/google/glass/search/results/ViewportHostingWebView$ViewportCountListener;


# static fields
.field private static final ENABLE_PWAV_FLAG:Ljava/lang/String; = "glass:search:enable_pwav"

.field private static SAVE_RESPONSE:Z = false

.field protected static final WEB_BROWSER_PRELOAD_ACTION:Ljava/lang/String; = "com.google.glass.browser.ACTION_PRELOAD"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private answerCardResponse:Ljava/lang/String;

.field private gradient:Landroid/widget/ImageView;

.field private guardPhrase:Landroid/widget/TextView;

.field private isFollowOnCards:Z

.field private lastGuardPhraseCreationUpTimeMillis:J

.field private lastIntent:Landroid/content/Intent;

.field volatile lastSavedTimelineItemId:Lcom/google/glass/timeline/TimelineItemId;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final menuCallback:Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;

.field pagedWebResultsView:Lcom/google/glass/search/results/WebAnswerView;

.field private recognitionResult:Ljava/lang/String;

.field results:Lcom/google/glass/search/results/ResultsContainer;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private resultsContainerView:Landroid/widget/RelativeLayout;

.field resultsView:Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private showVoiceMenu:Z

.field private timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

.field private timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field timelineItemId:Lcom/google/glass/timeline/TimelineItemId;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

.field private ttsHelper:Lcom/google/glass/util/TtsHelper;

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/search/VoiceSearchResultsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 112
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/glass/search/VoiceSearchResultsActivity;->SAVE_RESPONSE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Lcom/google/glass/voice/GlassVoiceActivity;-><init>()V

    .line 155
    iput-boolean v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->showVoiceMenu:Z

    .line 169
    iput-boolean v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->isFollowOnCards:Z

    .line 592
    new-instance v0, Lcom/google/glass/search/VoiceSearchResultsActivity$3;

    invoke-direct {v0, p0}, Lcom/google/glass/search/VoiceSearchResultsActivity$3;-><init>(Lcom/google/glass/search/VoiceSearchResultsActivity;)V

    iput-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->menuCallback:Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/search/VoiceSearchResultsActivity;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/VoiceSearchResultsActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/search/VoiceSearchResultsActivity;)Lcom/google/glass/util/TtsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/VoiceSearchResultsActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->ttsHelper:Lcom/google/glass/util/TtsHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/search/VoiceSearchResultsActivity;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/search/VoiceSearchResultsActivity;
    .param p1, "x1"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/google/glass/search/VoiceSearchResultsActivity;->addTimelineOptionsMenu(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/glass/search/VoiceSearchResultsActivity;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/VoiceSearchResultsActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/search/VoiceSearchResultsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/VoiceSearchResultsActivity;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->showVoiceMenu:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/glass/search/VoiceSearchResultsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/search/VoiceSearchResultsActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->openVoiceMenu()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/search/VoiceSearchResultsActivity;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/VoiceSearchResultsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/google/glass/search/VoiceSearchResultsActivity;->onItemSelected(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/glass/search/VoiceSearchResultsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/VoiceSearchResultsActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->answerCardResponse:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/search/VoiceSearchResultsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/VoiceSearchResultsActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/google/glass/search/VoiceSearchResultsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/search/VoiceSearchResultsActivity;)Lcom/google/glass/timeline/TimelineItemCreationHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/VoiceSearchResultsActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/search/VoiceSearchResultsActivity;)Lcom/google/glass/timeline/TimelineItemLocationHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/VoiceSearchResultsActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

    return-object v0
.end method

.method private addTimelineOptionsMenu(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 1
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 822
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 823
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 824
    return-void
.end method

.method private createOpenMenuListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 525
    new-instance v0, Lcom/google/glass/search/VoiceSearchResultsActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/search/VoiceSearchResultsActivity$1;-><init>(Lcom/google/glass/search/VoiceSearchResultsActivity;)V

    return-object v0
.end method

.method private createSwipeDiscoveryLogger()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 540
    new-instance v0, Lcom/google/glass/search/VoiceSearchResultsActivity$2;

    invoke-direct {v0, p0}, Lcom/google/glass/search/VoiceSearchResultsActivity$2;-><init>(Lcom/google/glass/search/VoiceSearchResultsActivity;)V

    return-object v0
.end method

.method private getDefaultBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "recognitionResult"    # Ljava/lang/String;

    .prologue
    .line 519
    new-instance v0, Lcom/google/glass/voice/network/SearchQueryBuilder;

    invoke-direct {v0, p1}, Lcom/google/glass/voice/network/SearchQueryBuilder;-><init>(Ljava/lang/String;)V

    .line 520
    .local v0, "sqb":Lcom/google/glass/voice/network/SearchQueryBuilder;
    invoke-virtual {v0}, Lcom/google/glass/voice/network/SearchQueryBuilder;->addTransportParams()V

    .line 521
    invoke-virtual {v0}, Lcom/google/glass/voice/network/SearchQueryBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getMenuItems(Z)Ljava/util/List;
    .locals 4
    .param p1, "voiceMenu"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/widget/MenuItemDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 626
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 628
    .local v1, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/widget/MenuItemDescriptor;>;"
    invoke-static {p0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->isPwavEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 629
    iget-object v2, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->pagedWebResultsView:Lcom/google/glass/search/results/WebAnswerView;

    iget-object v3, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->pagedWebResultsView:Lcom/google/glass/search/results/WebAnswerView;

    invoke-virtual {v3}, Lcom/google/glass/search/results/WebAnswerView;->getSelectedCardIndex()I

    move-result v3

    invoke-virtual {v2, p1, v3, v1}, Lcom/google/glass/search/results/WebAnswerView;->onPrepareMenu(ZILjava/util/List;)Z

    .line 635
    :goto_0
    return-object v1

    .line 632
    :cond_0
    iget-object v2, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/search/results/ResultsContainer;

    iget-object v3, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;

    invoke-virtual {v3}, Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/glass/search/results/ResultsContainer;->getViewAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/search/results/WebAnswerCard;

    .line 633
    .local v0, "card":Lcom/google/glass/search/results/WebAnswerCard;
    invoke-interface {v0, p1, v1}, Lcom/google/glass/search/results/WebAnswerCard;->onPrepareMenu(ZLjava/util/List;)Z

    goto :goto_0
.end method

.method private static getPreloadIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 270
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.browser.ACTION_PRELOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .local v0, "preloadAction":Landroid/content/Intent;
    const-string v1, "com.google.glass.browser"

    const-string v2, "com.google.glass.browser.WebBrowserPreloadService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    if-eqz p0, :cond_0

    .line 274
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 276
    :cond_0
    return-object v0
.end method

.method private insertAnswerCardSearchInTimeline()V
    .locals 8

    .prologue
    .line 739
    new-instance v0, Lcom/google/glass/search/results/AnswerCardProcessor;

    iget-object v2, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    iget-object v3, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    .line 741
    invoke-direct {p0, v1}, Lcom/google/glass/search/VoiceSearchResultsActivity;->getDefaultBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 742
    invoke-virtual {p0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, "endofSpeech"

    const-wide/16 v6, -0x1

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/search/results/AnswerCardProcessor;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Ljava/lang/String;Ljava/lang/String;J)V

    .line 745
    .local v0, "cardProcessor":Lcom/google/glass/search/results/AnswerCardProcessor;
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 746
    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/glass/search/VoiceSearchResultsActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/google/glass/search/VoiceSearchResultsActivity$5;-><init>(Lcom/google/glass/search/VoiceSearchResultsActivity;Lcom/google/glass/search/results/AnswerCardProcessor;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 816
    return-void
.end method

.method public static isPwavEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "application"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 174
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v3, "glass:search:enable_pwav"

    invoke-static {v0, v3, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 176
    .local v1, "gservicesPwavFlag":Z
    if-nez v1, :cond_0

    sget-object v3, Lcom/google/glass/util/Labs$Feature;->PWAV:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v3}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private logUserEventFromResults(Ljava/lang/String;J)V
    .locals 20
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "timeAtResultsActivityStarted"    # J

    .prologue
    .line 202
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/search/results/ResultsContainer;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/google/glass/search/results/ResultsContainer;->getViewAt(I)Landroid/view/View;

    move-result-object v4

    .line 203
    .local v4, "firstCard":Landroid/view/View;
    if-nez v4, :cond_1

    const-string v13, "null"

    .line 205
    .local v13, "viewNameForLogging":Ljava/lang/String;
    :goto_0
    const-string v14, "searchActivity"

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "id"

    const-wide/16 v16, -0x1

    invoke-virtual/range {v14 .. v17}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 210
    .local v5, "id":J
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "trigger_method"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 212
    .local v12, "triggerMethod":I
    const-string v14, "id"

    .line 213
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0xc

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "view"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object v13, v16, v17

    const/16 v17, 0x2

    const-string v18, "results"

    aput-object v18, v16, v17

    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/search/results/ResultsContainer;

    move-object/from16 v18, v0

    .line 215
    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/search/results/ResultsContainer;->getResultPageCount()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x4

    const-string v18, "type"

    aput-object v18, v16, v17

    const/16 v17, 0x5

    const/16 v18, 0x0

    .line 216
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x6

    const-string v18, "trigger"

    aput-object v18, v16, v17

    const/16 v17, 0x7

    .line 217
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x8

    const-string v18, "time_to_process_from_result"

    aput-object v18, v16, v17

    const/16 v17, 0x9

    .line 219
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v18

    sub-long v18, v18, p2

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0xa

    const-string v18, "source"

    aput-object v18, v16, v17

    const/16 v17, 0xb

    const-string v18, "gws"

    aput-object v18, v16, v17

    .line 212
    invoke-static/range {v14 .. v16}, Lcom/google/glass/userevent/UserEventHelper;->createEventTupleBuilder(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 221
    .local v3, "eventTuple":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "startTime"

    const-wide/16 v16, -0x1

    invoke-virtual/range {v14 .. v17}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 223
    .local v10, "startTime":J
    const-wide/16 v14, -0x1

    cmp-long v14, v10, v14

    if-eqz v14, :cond_2

    .line 224
    const-string v14, "time_to_result_total"

    sub-long v15, p2, v10

    .line 225
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 224
    invoke-static {v3, v14, v15}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    const-string v14, "time_total"

    .line 227
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v15

    invoke-interface {v15}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v10

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 226
    invoke-static {v3, v14, v15}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 231
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "endofSpeech"

    const-wide/16 v16, -0x1

    invoke-virtual/range {v14 .. v17}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 233
    .local v1, "endOfSpeechTime":J
    const-wide/16 v14, -0x1

    cmp-long v14, v1, v14

    if-eqz v14, :cond_3

    .line 236
    const-string v14, "time_to_result_from_eos"

    sub-long v15, p2, v1

    .line 237
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 236
    invoke-static {v3, v14, v15}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    const-string v14, "time_from_eos"

    .line 240
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v15

    invoke-interface {v15}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v1

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 238
    invoke-static {v3, v14, v15}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "resultsReceivedTime"

    const-wide/16 v16, -0x1

    invoke-virtual/range {v14 .. v17}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 244
    .local v8, "resultsReceivedTime":J
    const-wide/16 v14, -0x1

    cmp-long v14, v8, v14

    if-eqz v14, :cond_0

    .line 246
    const-string v14, "time_to_result_received_from_eos"

    sub-long v15, v8, v1

    .line 247
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 246
    invoke-static {v3, v14, v15}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    .end local v8    # "resultsReceivedTime":J
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/search/VoiceSearchResultsActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v15, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 264
    .end local v1    # "endOfSpeechTime":J
    .end local v3    # "eventTuple":Ljava/lang/StringBuilder;
    .end local v5    # "id":J
    .end local v10    # "startTime":J
    .end local v12    # "triggerMethod":I
    :goto_3
    return-void

    .line 203
    .end local v13    # "viewNameForLogging":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 229
    .restart local v3    # "eventTuple":Ljava/lang/StringBuilder;
    .restart local v5    # "id":J
    .restart local v10    # "startTime":J
    .restart local v12    # "triggerMethod":I
    .restart local v13    # "viewNameForLogging":Ljava/lang/String;
    :cond_2
    sget-object v14, Lcom/google/glass/search/VoiceSearchResultsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v15, "VOICE_SEARCH_RESULT: Start time was not set."

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-interface/range {v14 .. v16}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 250
    .restart local v1    # "endOfSpeechTime":J
    :cond_3
    sget-object v14, Lcom/google/glass/search/VoiceSearchResultsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v15, "VOICE_SEARCH_RESULT: End Of speech time was not set."

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-interface/range {v14 .. v16}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 256
    .end local v1    # "endOfSpeechTime":J
    .end local v3    # "eventTuple":Ljava/lang/StringBuilder;
    .end local v5    # "id":J
    .end local v10    # "startTime":J
    .end local v12    # "triggerMethod":I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/glass/search/VoiceSearchResultsActivity;->isFollowOnCards:Z

    if-eqz v14, :cond_5

    const/4 v7, 0x1

    .line 257
    .local v7, "isExtraCards":I
    :goto_4
    const-string v14, "view"

    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "results"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/search/results/ResultsContainer;

    move-object/from16 v17, v0

    .line 259
    invoke-virtual/range {v17 .. v17}, Lcom/google/glass/search/results/ResultsContainer;->getResultPageCount()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string v17, "is_extra"

    aput-object v17, v15, v16

    const/16 v16, 0x3

    .line 260
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-string v17, "source"

    aput-object v17, v15, v16

    const/16 v16, 0x5

    aput-object p1, v15, v16

    .line 257
    invoke-static {v14, v13, v15}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "eventTuple":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/search/VoiceSearchResultsActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v15, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_FROM_TIMELINE:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v14, v15, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto :goto_3

    .line 256
    .end local v3    # "eventTuple":Ljava/lang/String;
    .end local v7    # "isExtraCards":I
    :cond_5
    const/4 v7, 0x0

    goto :goto_4
.end method

.method private onItemSelected(I)Z
    .locals 3
    .param p1, "menuItemId"    # I

    .prologue
    .line 644
    invoke-static {p0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->isPwavEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 645
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->pagedWebResultsView:Lcom/google/glass/search/results/WebAnswerView;

    iget-object v2, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->pagedWebResultsView:Lcom/google/glass/search/results/WebAnswerView;

    invoke-virtual {v2}, Lcom/google/glass/search/results/WebAnswerView;->getSelectedCardIndex()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/google/glass/search/results/WebAnswerView;->onOptionsItemSelected(II)Z

    move-result v1

    .line 649
    :goto_0
    return v1

    .line 648
    :cond_0
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/search/results/ResultsContainer;

    iget-object v2, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;

    invoke-virtual {v2}, Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/glass/search/results/ResultsContainer;->getViewAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/search/results/WebAnswerCard;

    .line 649
    .local v0, "card":Lcom/google/glass/search/results/WebAnswerCard;
    invoke-interface {v0, p1}, Lcom/google/glass/search/results/WebAnswerCard;->onOptionsItemSelected(I)Z

    move-result v1

    goto :goto_0
.end method

.method private openVoiceMenu()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 668
    invoke-virtual {p0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->newVoiceMenu()Lcom/google/glass/voice/menu/VoiceMenuBuilder;

    move-result-object v1

    .line 669
    .local v1, "items":Lcom/google/glass/voice/menu/VoiceMenuBuilder;
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/glass/search/VoiceSearchResultsActivity;->getMenuItems(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/MenuItemDescriptor;

    .line 670
    .local v0, "descriptor":Lcom/google/glass/widget/MenuItemDescriptor;
    invoke-virtual {v0}, Lcom/google/glass/widget/MenuItemDescriptor;->getEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 671
    invoke-virtual {v0}, Lcom/google/glass/widget/MenuItemDescriptor;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/glass/widget/MenuItemDescriptor;->getCommand()Lcom/google/android/glass/app/ContextualMenus$Command;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/voice/menu/CommandValue;->forContextual(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v4

    new-instance v5, Lcom/google/glass/search/VoiceSearchResultsActivity$4;

    invoke-direct {v5, p0, v0}, Lcom/google/glass/search/VoiceSearchResultsActivity$4;-><init>(Lcom/google/glass/search/VoiceSearchResultsActivity;Lcom/google/glass/widget/MenuItemDescriptor;)V

    new-array v6, v7, [Lcom/google/glass/voice/menu/Requirement;

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/google/glass/voice/menu/VoiceMenuBuilder;->add(Ljava/lang/String;Lcom/google/glass/voice/menu/CommandValue;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;[Lcom/google/glass/voice/menu/Requirement;)V

    goto :goto_0

    .line 681
    .end local v0    # "descriptor":Lcom/google/glass/widget/MenuItemDescriptor;
    :cond_1
    iget-wide v3, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->lastGuardPhraseCreationUpTimeMillis:J

    .line 682
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/sound/SoundManager;

    .line 681
    invoke-static {v3, v4, v2, p0, v1}, Lcom/google/glass/voice/menu/VoiceMenuUtils;->openVoiceMenu(JLcom/google/glass/sound/SoundManager;Lcom/google/glass/voice/GlassVoiceActivity;Lcom/google/glass/voice/menu/VoiceMenuBuilder;)Lcom/google/glass/voice/VoiceConfig;

    .line 683
    iput-boolean v7, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->showVoiceMenu:Z

    .line 684
    return-void
.end method

.method public static preloadUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 284
    sget-object v2, Lcom/google/glass/util/Labs$Feature;->WEB_BROWSER_PRELOAD:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v2}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    invoke-static {p1}, Lcom/google/glass/browser/BrowserHelper;->formatBrowserUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 290
    if-eqz p1, :cond_0

    .line 295
    invoke-static {p1}, Lcom/google/glass/search/VoiceSearchResultsActivity;->getPreloadIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 296
    .local v0, "preloadAction":Landroid/content/Intent;
    sget-object v2, Lcom/google/glass/search/VoiceSearchResultsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Preloading search result website with intent: [%s]"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    .line 299
    .local v1, "service":Landroid/content/ComponentName;
    sget-object v2, Lcom/google/glass/search/VoiceSearchResultsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Service component name: [%s]"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private stopPreloadService()V
    .locals 7

    .prologue
    .line 306
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/google/glass/search/VoiceSearchResultsActivity;->getPreloadIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 307
    .local v0, "preloadAction":Landroid/content/Intent;
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/google/glass/util/IntentSender;->stopService(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 308
    .local v1, "success":Z
    sget-object v2, Lcom/google/glass/search/VoiceSearchResultsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "WebBrowserPreloadService successfully stopped? %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    return-void
.end method


# virtual methods
.method public getLastSavedTimelineItemId()Lcom/google/glass/timeline/TimelineItemId;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 828
    iget-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->lastSavedTimelineItemId:Lcom/google/glass/timeline/TimelineItemId;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 709
    invoke-super {p0, p1, p2, p3}, Lcom/google/glass/voice/GlassVoiceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 710
    const/16 v3, 0xa

    if-ne v3, p1, :cond_2

    .line 711
    iget-object v3, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;

    if-nez v3, :cond_1

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    iget-object v3, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;

    invoke-virtual {v3}, Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;->getSelectedItemPosition()I

    move-result v1

    .line 715
    .local v1, "resultViewIndex":I
    iget-object v3, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/search/results/ResultsContainer;

    invoke-virtual {v3, v1}, Lcom/google/glass/search/results/ResultsContainer;->getViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 716
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/google/glass/search/results/WebAnswerCard;

    if-eqz v3, :cond_0

    .line 720
    new-instance v0, Lcom/google/glass/voice/VoiceAnnotationHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceAnnotationHelper;-><init>(Landroid/app/Activity;)V

    .line 721
    .local v0, "helper":Lcom/google/glass/voice/VoiceAnnotationHelper;
    check-cast v2, Lcom/google/glass/search/results/WebAnswerCard;

    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {v0, p2, p3}, Lcom/google/glass/voice/VoiceAnnotationHelper;->getAnnotationResult(ILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/glass/search/results/WebAnswerCard;->onPromptResult(Ljava/lang/String;)V

    .line 723
    .end local v0    # "helper":Lcom/google/glass/voice/VoiceAnnotationHelper;
    .end local v1    # "resultViewIndex":I
    :cond_2
    const/16 v3, 0xb

    if-ne v3, p1, :cond_0

    .line 724
    iget-object v3, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;

    if-nez v3, :cond_0

    .line 725
    sget-object v3, Lcom/google/glass/search/VoiceSearchResultsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Got result from follow-on cards, but original resultsView is missing."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/google/glass/voice/GlassVoiceActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 187
    invoke-static {}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->getInstance()Lcom/google/glass/util/TtsHelperLazySingletonProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/TtsHelper;

    iput-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->ttsHelper:Lcom/google/glass/util/TtsHelper;

    .line 188
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 189
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 190
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemCreationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    .line 191
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemLocationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

    .line 193
    sget v0, Lcom/google/glass/search/R$id;->results_container:I

    invoke-virtual {p0, v0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsContainerView:Landroid/widget/RelativeLayout;

    .line 194
    sget v0, Lcom/google/glass/search/R$id;->gradient:I

    invoke-virtual {p0, v0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->gradient:Landroid/widget/ImageView;

    .line 195
    sget v0, Lcom/google/glass/search/R$id;->guard_phrase_hint:I

    invoke-virtual {p0, v0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->guardPhrase:Landroid/widget/TextView;

    .line 196
    return-void
.end method

.method protected onDestroyInternal()V
    .locals 0

    .prologue
    .line 582
    invoke-direct {p0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->stopPreloadService()V

    .line 583
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onDestroyInternal()V

    .line 584
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 3
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    .line 689
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->ttsHelper:Lcom/google/glass/util/TtsHelper;

    invoke-virtual {v1}, Lcom/google/glass/util/TtsHelper;->stopSpeaking()V

    .line 691
    iget-boolean v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->isFollowOnCards:Z

    if-eqz v1, :cond_0

    .line 692
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 693
    .local v0, "result":Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->setResult(ILandroid/content/Intent;)V

    .line 694
    invoke-virtual {p0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 695
    invoke-virtual {p0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->finish()V

    .line 696
    const/4 v1, 0x1

    .line 704
    .end local v0    # "result":Landroid/content/Intent;
    :goto_0
    return v1

    .line 699
    :cond_0
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->timelineItemId:Lcom/google/glass/timeline/TimelineItemId;

    if-eqz v1, :cond_1

    .line 700
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->timelineItemId:Lcom/google/glass/timeline/TimelineItemId;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/google/glass/timeline/TimelineActivityHelper;->goToTimeline(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;Z)V

    .line 701
    invoke-super {p0, p1}, Lcom/google/glass/voice/GlassVoiceActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v1

    goto :goto_0

    .line 704
    :cond_1
    invoke-super {p0, p1}, Lcom/google/glass/voice/GlassVoiceActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Lcom/google/glass/search/VoiceSearchResultsActivity;->setIntent(Landroid/content/Intent;)V

    .line 317
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "selectedItem"    # Landroid/view/MenuItem;

    .prologue
    .line 640
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->onItemSelected(I)Z

    move-result v0

    return v0
.end method

.method protected onPauseInternal()V
    .locals 1

    .prologue
    .line 567
    invoke-static {p0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->isPwavEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->pagedWebResultsView:Lcom/google/glass/search/results/WebAnswerView;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->pagedWebResultsView:Lcom/google/glass/search/results/WebAnswerView;

    invoke-virtual {v0}, Lcom/google/glass/search/results/WebAnswerView;->notifyInvisible()V

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;

    invoke-virtual {v0}, Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;

    invoke-virtual {v0}, Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;->deactivate()V

    .line 576
    :cond_1
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onPauseInternal()V

    .line 577
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x0

    .line 614
    invoke-super {p0, p1}, Lcom/google/glass/voice/GlassVoiceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 616
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 617
    invoke-direct {p0, v5}, Lcom/google/glass/search/VoiceSearchResultsActivity;->getMenuItems(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/MenuItemDescriptor;

    .line 618
    .local v1, "descriptor":Lcom/google/glass/widget/MenuItemDescriptor;
    invoke-virtual {v1}, Lcom/google/glass/widget/MenuItemDescriptor;->getId()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/glass/widget/MenuItemDescriptor;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 619
    .local v0, "add":Landroid/view/MenuItem;
    invoke-virtual {v1}, Lcom/google/glass/widget/MenuItemDescriptor;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 620
    invoke-virtual {v1}, Lcom/google/glass/widget/MenuItemDescriptor;->getEnabled()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 622
    .end local v0    # "add":Landroid/view/MenuItem;
    .end local v1    # "descriptor":Lcom/google/glass/widget/MenuItemDescriptor;
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v2

    return v2
.end method

.method protected onResumeInternal()V
    .locals 14

    .prologue
    .line 321
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onResumeInternal()V

    .line 322
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->ATC_OK:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->gradient:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->guardPhrase:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/search/VoiceSearchResultsActivity;->listenForGuardPhrase(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 326
    .local v8, "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->isPwavEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 327
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->lastIntent:Landroid/content/Intent;

    if-ne v1, v8, :cond_2

    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;

    if-eqz v1, :cond_2

    .line 329
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;

    invoke-virtual {v1}, Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;->activate()V

    .line 458
    :cond_1
    :goto_0
    return-void

    .line 331
    :cond_2
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;

    if-nez v1, :cond_4

    .line 333
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsContainerView:Landroid/widget/RelativeLayout;

    sget v2, Lcom/google/glass/search/R$id;->results:I

    .line 334
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;

    iput-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;

    .line 352
    :cond_3
    :goto_1
    iput-object v8, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->lastIntent:Landroid/content/Intent;

    .line 353
    const-string v1, "source"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "source"

    .line 354
    invoke-virtual {v8, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 356
    .local v10, "source":Ljava/lang/String;
    :goto_2
    const-string v1, "recognitionResult"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "recognitionResult"

    .line 357
    invoke-virtual {v8, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    .line 358
    const-string v1, "followOnCards"

    .line 359
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->isFollowOnCards:Z

    .line 361
    const-string v1, "cardResult"

    .line 362
    invoke-virtual {v8, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->answerCardResponse:Ljava/lang/String;

    .line 363
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->answerCardResponse:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 364
    sget-object v1, Lcom/google/glass/search/VoiceSearchResultsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "no answer card response!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;

    .line 368
    new-instance v1, Lcom/google/glass/app/GlassError;

    invoke-direct {v1}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v2, Lcom/google/glass/search/R$string;->voice_search_no_answer:I

    .line 369
    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v1

    const/4 v2, 0x1

    .line 370
    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v1

    const/4 v2, 0x1

    .line 371
    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setAutoHide(Z)Lcom/google/glass/app/GlassError;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/app/GlassError;->show(Landroid/content/Context;)V

    goto :goto_0

    .line 337
    .end local v10    # "source":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsContainerView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 338
    new-instance v1, Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;

    invoke-direct {v1, p0}, Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;

    .line 339
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsContainerView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 342
    :cond_5
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->lastIntent:Landroid/content/Intent;

    if-ne v1, v8, :cond_6

    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->pagedWebResultsView:Lcom/google/glass/search/results/WebAnswerView;

    if-eqz v1, :cond_6

    .line 345
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->pagedWebResultsView:Lcom/google/glass/search/results/WebAnswerView;

    invoke-virtual {v1}, Lcom/google/glass/search/results/WebAnswerView;->notifyVisible()V

    goto/16 :goto_0

    .line 347
    :cond_6
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->pagedWebResultsView:Lcom/google/glass/search/results/WebAnswerView;

    if-eqz v1, :cond_3

    .line 348
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsContainerView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->pagedWebResultsView:Lcom/google/glass/search/results/WebAnswerView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 354
    :cond_7
    const-string v10, "unknown"

    goto :goto_2

    .line 357
    .restart local v10    # "source":Ljava/lang/String;
    :cond_8
    const-string v1, ""

    goto :goto_3

    .line 374
    :cond_9
    const-string v1, "timelineItemId"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/glass/timeline/TimelineItemId;

    iput-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->timelineItemId:Lcom/google/glass/timeline/TimelineItemId;

    .line 376
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->timelineItemId:Lcom/google/glass/timeline/TimelineItemId;

    if-nez v1, :cond_c

    iget-boolean v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->isFollowOnCards:Z

    if-nez v1, :cond_c

    const/4 v9, 0x1

    .line 379
    .local v9, "isInitialResult":Z
    :goto_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->lastSavedTimelineItemId:Lcom/google/glass/timeline/TimelineItemId;

    .line 381
    const-string v1, "baseUrl"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "baseUrl"

    .line 382
    invoke-virtual {v8, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 385
    .local v4, "baseUrl":Ljava/lang/String;
    :goto_5
    sget-object v1, Lcom/google/glass/search/VoiceSearchResultsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Parsing result as answer card"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    new-instance v0, Lcom/google/glass/search/results/AnswerCardProcessor;

    iget-object v2, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    iget-object v3, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    const-string v1, "endofSpeech"

    const-wide/16 v5, -0x1

    .line 388
    invoke-virtual {v8, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/search/results/AnswerCardProcessor;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Ljava/lang/String;Ljava/lang/String;J)V

    .line 393
    .local v0, "cardProcessor":Lcom/google/glass/search/results/AnswerCardProcessor;
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v11

    .line 398
    .local v11, "timeAtResultsActivityStarted":J
    iget-object v5, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->answerCardResponse:Ljava/lang/String;

    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    move-object v3, v1

    :goto_6
    if-nez v9, :cond_f

    const/4 v1, 0x1

    move v2, v1

    :goto_7
    if-nez v9, :cond_10

    const/4 v1, 0x1

    :goto_8
    invoke-virtual {v0, v5, v3, v2, v1}, Lcom/google/glass/search/results/AnswerCardProcessor;->process(Ljava/lang/String;Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;ZZ)Lcom/google/glass/search/results/ResultsContainer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/search/results/ResultsContainer;

    .line 403
    sget-boolean v1, Lcom/google/glass/search/VoiceSearchResultsActivity;->SAVE_RESPONSE:Z

    if-eqz v1, :cond_a

    .line 404
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->answerCardResponse:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/search/VoiceSearchResultsDebugActivity;->saveHtmlResponseProto(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_a
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/search/results/ResultsContainer;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/search/results/ResultsContainer;

    invoke-virtual {v1}, Lcom/google/glass/search/results/ResultsContainer;->getResultPageCount()I

    move-result v1

    if-nez v1, :cond_11

    .line 409
    :cond_b
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;

    .line 411
    new-instance v1, Lcom/google/glass/app/GlassError;

    invoke-direct {v1}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v2, Lcom/google/glass/search/R$string;->voice_search_no_answer:I

    .line 412
    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v1

    const/4 v2, 0x1

    .line 413
    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v1

    const/4 v2, 0x1

    .line 414
    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setAutoHide(Z)Lcom/google/glass/app/GlassError;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/app/GlassError;->show(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 376
    .end local v0    # "cardProcessor":Lcom/google/glass/search/results/AnswerCardProcessor;
    .end local v4    # "baseUrl":Ljava/lang/String;
    .end local v9    # "isInitialResult":Z
    .end local v11    # "timeAtResultsActivityStarted":J
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 382
    .restart local v9    # "isInitialResult":Z
    :cond_d
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    .line 383
    invoke-direct {p0, v1}, Lcom/google/glass/search/VoiceSearchResultsActivity;->getDefaultBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 398
    .restart local v0    # "cardProcessor":Lcom/google/glass/search/results/AnswerCardProcessor;
    .restart local v4    # "baseUrl":Ljava/lang/String;
    .restart local v11    # "timeAtResultsActivityStarted":J
    :cond_e
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->menuCallback:Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;

    move-object v3, v1

    goto :goto_6

    :cond_f
    const/4 v1, 0x0

    move v2, v1

    goto :goto_7

    :cond_10
    const/4 v1, 0x0

    goto :goto_8

    .line 419
    :cond_11
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_9
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/search/results/ResultsContainer;

    invoke-virtual {v1}, Lcom/google/glass/search/results/ResultsContainer;->getResultPageCount()I

    move-result v1

    if-ge v7, v1, :cond_12

    .line 420
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/search/results/ResultsContainer;

    invoke-virtual {v1, v7}, Lcom/google/glass/search/results/ResultsContainer;->getViewAt(I)Landroid/view/View;

    move-result-object v13

    .line 421
    .local v13, "v":Landroid/view/View;
    instance-of v1, v13, Lcom/google/glass/search/results/WebAnswerView;

    if-eqz v1, :cond_15

    .line 422
    check-cast v13, Lcom/google/glass/search/results/WebAnswerView;

    .end local v13    # "v":Landroid/view/View;
    invoke-virtual {v13, p0}, Lcom/google/glass/search/results/WebAnswerView;->setViewportCountListener(Lcom/google/glass/search/results/ViewportHostingWebView$ViewportCountListener;)V

    .line 427
    :cond_12
    if-eqz v9, :cond_13

    .line 430
    invoke-virtual {p0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 433
    :cond_13
    invoke-static {p0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->isPwavEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 435
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/search/results/ResultsContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/glass/search/results/ResultsContainer;->getViewAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/search/results/WebAnswerView;

    iput-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->pagedWebResultsView:Lcom/google/glass/search/results/WebAnswerView;

    .line 436
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsContainerView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->pagedWebResultsView:Lcom/google/glass/search/results/WebAnswerView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 448
    :goto_a
    invoke-direct {p0, v10, v11, v12}, Lcom/google/glass/search/VoiceSearchResultsActivity;->logUserEventFromResults(Ljava/lang/String;J)V

    .line 450
    if-eqz v9, :cond_14

    .line 451
    invoke-direct {p0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->insertAnswerCardSearchInTimeline()V

    .line 454
    :cond_14
    invoke-static {p0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->isPwavEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 455
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;

    invoke-virtual {v1}, Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;->activate()V

    .line 456
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;->setSelection(I)V

    goto/16 :goto_0

    .line 419
    .restart local v13    # "v":Landroid/view/View;
    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 441
    .end local v13    # "v":Landroid/view/View;
    :cond_16
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;

    invoke-direct {p0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->createSwipeDiscoveryLogger()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 442
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;

    invoke-direct {p0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->createOpenMenuListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 445
    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;

    iget-object v2, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/search/results/ResultsContainer;

    invoke-virtual {v2}, Lcom/google/glass/search/results/ResultsContainer;->getResultPages()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;->setResultPages(Ljava/util/List;)V

    goto :goto_a
.end method

.method public onViewportCountChanged(I)V
    .locals 20
    .param p1, "numCards"    # I

    .prologue
    .line 464
    const/4 v2, 0x0

    .line 465
    .local v2, "backingView":Lcom/google/glass/search/results/WebAnswerView;
    const/4 v3, -0x1

    .line 466
    .local v3, "backingViewIndex":I
    const/4 v8, -0x1

    .line 467
    .local v8, "insertionPoint":I
    const/4 v13, 0x0

    .line 468
    .local v13, "numViewportsFound":I
    new-instance v4, Lcom/google/glass/search/results/ResultsContainer$Builder;

    invoke-direct {v4}, Lcom/google/glass/search/results/ResultsContainer$Builder;-><init>()V

    .line 469
    .local v4, "builder":Lcom/google/glass/search/results/ResultsContainer$Builder;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/search/results/ResultsContainer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/glass/search/results/ResultsContainer;->getResultPageCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_8

    .line 470
    const/16 v16, 0x1

    .line 471
    .local v16, "shouldCopyCard":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/search/results/ResultsContainer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/google/glass/search/results/ResultsContainer;->getViewAt(I)Landroid/view/View;

    move-result-object v15

    .line 473
    .local v15, "oldView":Landroid/view/View;
    instance-of v0, v15, Lcom/google/glass/search/results/WebAnswerCard;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    move-object v14, v15

    .line 474
    check-cast v14, Lcom/google/glass/search/results/WebAnswerCard;

    .line 475
    .local v14, "oldAnswerView":Lcom/google/glass/search/results/WebAnswerCard;
    invoke-interface {v14}, Lcom/google/glass/search/results/WebAnswerCard;->getMasterAnswerView()Lcom/google/glass/search/results/WebAnswerView;

    move-result-object v5

    .line 476
    .local v5, "currentMasterView":Lcom/google/glass/search/results/WebAnswerView;
    if-ne v5, v14, :cond_6

    const/4 v10, 0x1

    .line 478
    .local v10, "isMasterView":Z
    :goto_1
    if-eqz v2, :cond_0

    if-eq v2, v5, :cond_0

    .line 479
    sget-object v17, Lcom/google/glass/search/VoiceSearchResultsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v18, "Multiple master views in onViewportCountChanged; cards may be inconsistent."

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    :cond_0
    if-nez v10, :cond_1

    if-eq v2, v5, :cond_1

    .line 482
    sget-object v17, Lcom/google/glass/search/VoiceSearchResultsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v18, "Found slave viewport before its master; cards may be inconsistent."

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 485
    :cond_1
    move-object v2, v5

    .line 486
    if-eqz v10, :cond_2

    .line 487
    move v3, v7

    .line 490
    :cond_2
    if-nez v10, :cond_3

    move/from16 v0, p1

    if-ge v13, v0, :cond_7

    .line 491
    :cond_3
    add-int/lit8 v8, v7, 0x1

    .line 492
    add-int/lit8 v13, v13, 0x1

    .line 497
    .end local v5    # "currentMasterView":Lcom/google/glass/search/results/WebAnswerView;
    .end local v10    # "isMasterView":Z
    .end local v14    # "oldAnswerView":Lcom/google/glass/search/results/WebAnswerCard;
    :cond_4
    :goto_2
    if-eqz v16, :cond_5

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/search/results/ResultsContainer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/google/glass/search/results/ResultsContainer;->getMenuItemDescriptorAt(I)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/search/results/ResultsContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/google/glass/search/results/ResultsContainer;->getBundleAt(I)Landroid/os/Bundle;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v15, v0, v1}, Lcom/google/glass/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Ljava/util/List;Landroid/os/Bundle;)Lcom/google/glass/search/results/ResultsContainer$Builder;

    .line 469
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 476
    .restart local v5    # "currentMasterView":Lcom/google/glass/search/results/WebAnswerView;
    .restart local v14    # "oldAnswerView":Lcom/google/glass/search/results/WebAnswerCard;
    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    .line 494
    .restart local v10    # "isMasterView":Z
    :cond_7
    const/16 v16, 0x0

    goto :goto_2

    .line 503
    .end local v5    # "currentMasterView":Lcom/google/glass/search/results/WebAnswerView;
    .end local v10    # "isMasterView":Z
    .end local v14    # "oldAnswerView":Lcom/google/glass/search/results/WebAnswerCard;
    .end local v15    # "oldView":Landroid/view/View;
    .end local v16    # "shouldCopyCard":Z
    :cond_8
    if-eqz v2, :cond_a

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/search/results/ResultsContainer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/google/glass/search/results/ResultsContainer;->getMenuItemDescriptorAt(I)Ljava/util/List;

    move-result-object v6

    .line 505
    .local v6, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/widget/MenuItemDescriptor;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/search/results/ResultsContainer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/google/glass/search/results/ResultsContainer;->getBundleAt(I)Landroid/os/Bundle;

    move-result-object v11

    .line 506
    .local v11, "masterBundle":Landroid/os/Bundle;
    move v7, v13

    move v9, v8

    .end local v8    # "insertionPoint":I
    .local v9, "insertionPoint":I
    :goto_3
    move/from16 v0, p1

    if-ge v7, v0, :cond_9

    .line 507
    invoke-virtual {v2, v7}, Lcom/google/glass/search/results/WebAnswerView;->getViewportView(I)Landroid/view/View;

    move-result-object v12

    .line 508
    .local v12, "newViewport":Landroid/view/View;
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "insertionPoint":I
    .restart local v8    # "insertionPoint":I
    invoke-virtual {v4, v12, v6, v11, v9}, Lcom/google/glass/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Ljava/util/List;Landroid/os/Bundle;I)Lcom/google/glass/search/results/ResultsContainer$Builder;

    .line 506
    add-int/lit8 v7, v7, 0x1

    move v9, v8

    .end local v8    # "insertionPoint":I
    .restart local v9    # "insertionPoint":I
    goto :goto_3

    .end local v12    # "newViewport":Landroid/view/View;
    :cond_9
    move v8, v9

    .line 514
    .end local v6    # "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/widget/MenuItemDescriptor;>;"
    .end local v9    # "insertionPoint":I
    .end local v11    # "masterBundle":Landroid/os/Bundle;
    .restart local v8    # "insertionPoint":I
    :cond_a
    invoke-virtual {v4}, Lcom/google/glass/search/results/ResultsContainer$Builder;->build()Lcom/google/glass/search/results/ResultsContainer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/search/results/ResultsContainer;

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/search/results/ResultsContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/search/results/ResultsContainer;->getResultPages()Ljava/util/List;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;->setResultPages(Ljava/util/List;)V

    .line 516
    return-void
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 2
    .param p1, "command"    # Lcom/google/glass/voice/VoiceCommand;

    .prologue
    .line 655
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getCommandCreationUpTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->lastGuardPhraseCreationUpTimeMillis:J

    .line 656
    invoke-virtual {p0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->getGuardPhrase(Landroid/content/Context;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->showVoiceMenu:Z

    .line 658
    invoke-static {p0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->isPwavEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->pagedWebResultsView:Lcom/google/glass/search/results/WebAnswerView;

    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->pagedWebResultsView:Lcom/google/glass/search/results/WebAnswerView;

    invoke-virtual {v1}, Lcom/google/glass/search/results/WebAnswerView;->getSelectedCardIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/search/results/WebAnswerView;->requestMenu(I)Z

    .line 664
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/google/glass/voice/VoiceConfig;->getGuardConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;

    invoke-virtual {v0}, Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/search/results/WebAnswerCard;

    invoke-interface {v0}, Lcom/google/glass/search/results/WebAnswerCard;->requestMenu()Z

    goto :goto_0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 588
    invoke-static {p0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->isPwavEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/google/glass/search/R$layout;->voice_search_results_activity_pwav:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/google/glass/search/R$layout;->voice_search_results_activity:I

    goto :goto_0
.end method

.method protected shouldFinishTurnScreenOff()Z
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x0

    return v0
.end method
