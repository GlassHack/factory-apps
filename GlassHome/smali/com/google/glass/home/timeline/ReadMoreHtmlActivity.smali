.class public Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;
.super Lcom/google/glass/voice/GlassVoiceActivity;
.source "ReadMoreHtmlActivity.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private entityGrammarCompiler:Lcom/google/glass/voice/entity/EntityGrammarCompiler;

.field private item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private onResumeTask:Landroid/content/Intent;

.field private final pageSelectedListener:Lcom/google/glass/html/PagedWebView$OnPageSelectedListener;

.field private root:Landroid/widget/FrameLayout;

.field private timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field private timelineMenuBuilder:Lcom/google/glass/timeline/TimelineMenuBuilder;

.field private timelineMenuSelectionHandler:Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;

.field private voiceOptionsHelper:Lcom/google/glass/timeline/VoiceOptionsHelper;

.field private webView:Lcom/google/glass/html/PagedWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/glass/voice/GlassVoiceActivity;-><init>()V

    .line 50
    new-instance v0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$1;-><init>(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->pageSelectedListener:Lcom/google/glass/html/PagedWebView$OnPageSelectedListener;

    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->root:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;)Lcom/google/glass/html/PagedWebView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->webView:Lcom/google/glass/html/PagedWebView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;
    .param p1, "x1"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;)Lcom/google/glass/voice/entity/EntityGrammarCompiler;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->entityGrammarCompiler:Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->renderItem()V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->onResumeTask:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    if-eqz p1, :cond_0

    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->onResumeTask:Landroid/content/Intent;

    .line 116
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private renderItem()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v1}, Lcom/google/glass/timeline/TimelineItemUtils;->getDisplayTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v3

    invoke-direct {p0, v0, v3, v4}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->useCachedVersion(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 131
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->webView:Lcom/google/glass/html/PagedWebView;

    if-nez v0, :cond_1

    .line 132
    sget-object v0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Cannot render as WebView has been released."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->webView:Lcom/google/glass/html/PagedWebView;

    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    const/4 v3, 0x1

    new-instance v5, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$2;

    invoke-direct {v5, p0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$2;-><init>(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;)V

    move v4, v2

    move-object v7, v6

    move-object v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/google/glass/html/PagedWebView;->render(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZZLcom/google/glass/html/PagedWebView$OnPageCountChangeListener;Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->webView:Lcom/google/glass/html/PagedWebView;

    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->pageSelectedListener:Lcom/google/glass/html/PagedWebView$OnPageSelectedListener;

    invoke-virtual {v0, v1}, Lcom/google/glass/html/PagedWebView;->setPageSelectedListener(Lcom/google/glass/html/PagedWebView$OnPageSelectedListener;)V

    goto :goto_0
.end method

.method private useCachedVersion(Ljava/lang/String;J)Z
    .locals 9
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "displayTime"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 258
    invoke-static {}, Lcom/google/glass/html/PagedWebViewCacheProvider;->getInstance()Lcom/google/glass/html/PagedWebViewCacheProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/html/PagedWebViewCacheProvider;->get()Lcom/google/glass/html/PagedWebViewCache;

    move-result-object v0

    .line 259
    .local v0, "cache":Lcom/google/glass/html/PagedWebViewCache;
    invoke-static {p1, p2, p3, v3}, Lcom/google/glass/html/PagedWebViewCache;->generateKey(Ljava/lang/String;JZ)Lcom/google/glass/html/PagedWebViewCache$Key;

    move-result-object v2

    .line 260
    .local v2, "key":Lcom/google/glass/html/PagedWebViewCache$Key;
    invoke-virtual {v0, v2}, Lcom/google/glass/html/PagedWebViewCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/html/PagedWebView;

    .line 261
    .local v1, "cachedWebView":Lcom/google/glass/html/PagedWebView;
    if-eqz v1, :cond_2

    .line 263
    invoke-virtual {v1}, Lcom/google/glass/html/PagedWebView;->resetScroll()V

    .line 266
    invoke-virtual {v1}, Lcom/google/glass/html/PagedWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->root:Landroid/widget/FrameLayout;

    if-ne v5, v6, :cond_0

    .line 285
    :goto_0
    return v3

    .line 271
    :cond_0
    invoke-virtual {v1}, Lcom/google/glass/html/PagedWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_1

    .line 272
    iget-object v4, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->pageSelectedListener:Lcom/google/glass/html/PagedWebView$OnPageSelectedListener;

    invoke-virtual {v1, v4}, Lcom/google/glass/html/PagedWebView;->setPageSelectedListener(Lcom/google/glass/html/PagedWebView$OnPageSelectedListener;)V

    .line 273
    iget-object v4, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 274
    iget-object v4, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 280
    :cond_1
    sget-object v5, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "CachedWebView (%s) is in a parent other than our root (%s)."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v4

    iget-object v8, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->root:Landroid/widget/FrameLayout;

    aput-object v8, v7, v3

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v4

    .line 283
    goto :goto_0

    :cond_2
    move v3, v4

    .line 285
    goto :goto_0
.end method


# virtual methods
.method public onCreateInternal(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/google/glass/voice/GlassVoiceActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 83
    new-instance v1, Lcom/google/glass/html/PagedWebView;

    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/CachedBitmapFactory;

    invoke-direct {v1, p0, v0}, Lcom/google/glass/html/PagedWebView;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)V

    iput-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->webView:Lcom/google/glass/html/PagedWebView;

    .line 84
    sget v0, Lcom/google/glass/home/R$id;->root:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->root:Landroid/widget/FrameLayout;

    .line 86
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v3

    .line 87
    .local v3, "userEventHelper":Lcom/google/glass/userevent/UserEventHelper;
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 88
    new-instance v0, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;

    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    invoke-direct {v0, p0, v3, v1}, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;-><init>(Landroid/app/Activity;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->timelineMenuSelectionHandler:Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;

    .line 90
    new-instance v0, Lcom/google/glass/home/timeline/HomeTimelineMenuBuilder;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/HomeTimelineMenuBuilder;-><init>(Lcom/google/glass/app/GlassActivity;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->timelineMenuBuilder:Lcom/google/glass/timeline/TimelineMenuBuilder;

    .line 91
    new-instance v0, Lcom/google/glass/timeline/VoiceOptionsHelper;

    iget-object v2, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->timelineMenuSelectionHandler:Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;

    .line 92
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v4

    invoke-static {}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->getInstance()Lcom/google/glass/util/TtsHelperLazySingletonProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/util/TtsHelper;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/timeline/VoiceOptionsHelper;-><init>(Lcom/google/glass/voice/GlassVoiceActivity;Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/sound/SoundManager;Lcom/google/glass/util/TtsHelper;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->voiceOptionsHelper:Lcom/google/glass/timeline/VoiceOptionsHelper;

    .line 93
    new-instance v0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->getVoiceInputHelper()Lcom/google/glass/voice/VoiceInputHelper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/entity/EntityGrammarCompiler;-><init>(Landroid/content/Context;Lcom/google/glass/voice/GrammarStore;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->entityGrammarCompiler:Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    .line 94
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->getVoiceInputHelper()Lcom/google/glass/voice/VoiceInputHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->entityGrammarCompiler:Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceInputHelper;->addGrammarLoader(Lcom/google/glass/voice/GrammarLoader;)Lcom/google/glass/voice/VoiceInputHelper;

    .line 96
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->handleIntent(Landroid/content/Intent;)V

    .line 97
    return-void
.end method

.method protected onDestroyInternal()V
    .locals 1

    .prologue
    .line 205
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onDestroyInternal()V

    .line 206
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 209
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->webView:Lcom/google/glass/html/PagedWebView;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->webView:Lcom/google/glass/html/PagedWebView;

    invoke-virtual {v0}, Lcom/google/glass/html/PagedWebView;->release()V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->webView:Lcom/google/glass/html/PagedWebView;

    .line 213
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/google/glass/voice/GlassVoiceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 102
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->handleIntent(Landroid/content/Intent;)V

    .line 103
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "selectedOptionMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 234
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineMenuUtils;->getMenuItemExtra(Landroid/view/MenuItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x0

    .line 238
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->timelineMenuSelectionHandler:Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;

    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v2, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 239
    invoke-static {p0, v2}, Lcom/google/glass/timeline/VoiceOptionsHelper;->getTimelineItemDeletedListener(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/timeline/TimelineItemDeletedListener;

    move-result-object v2

    const-string v3, "t"

    .line 238
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;->handleOptionsItemSelected(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/view/MenuItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 217
    invoke-super {p0, p1}, Lcom/google/glass/voice/GlassVoiceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 220
    invoke-static {}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->getInstance()Lcom/google/glass/util/TtsHelperLazySingletonProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/TtsHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelper;->stopSpeaking()V

    .line 223
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 225
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->timelineMenuBuilder:Lcom/google/glass/timeline/TimelineMenuBuilder;

    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/timeline/TimelineMenuBuilder;->handlePrepareOptionsMenu(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 227
    const/4 v0, 0x1

    .line 229
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResumeInternal()V
    .locals 5

    .prologue
    .line 164
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onResumeInternal()V

    .line 166
    iget-object v2, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->onResumeTask:Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 167
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->onResumeTask:Landroid/content/Intent;

    .line 169
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "item_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/TimelineItemId;

    .line 172
    .local v0, "itemId":Lcom/google/glass/timeline/TimelineItemId;
    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemId;->getDisplayTime()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->useCachedVersion(Ljava/lang/String;J)Z

    move-result v1

    .line 175
    .local v1, "usingCachedVersion":Z
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 176
    invoke-virtual {v2}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v2

    new-instance v3, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3;-><init>(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;Lcom/google/glass/timeline/TimelineItemId;Z)V

    invoke-interface {v2, v3}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 198
    .end local v0    # "itemId":Lcom/google/glass/timeline/TimelineItemId;
    .end local v1    # "usingCachedVersion":Z
    :cond_0
    :goto_0
    sget-object v2, Lcom/google/glass/util/Labs$Feature;->ATC_OK:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v2}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    invoke-static {p0}, Lcom/google/glass/voice/VoiceConfig;->getGuardConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 201
    :cond_1
    return-void

    .line 194
    :cond_2
    iget-object v2, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v2, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->renderItem()V

    goto :goto_0
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 7
    .param p1, "command"    # Lcom/google/glass/voice/VoiceCommand;

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->getGuardPhrase(Landroid/content/Context;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->voiceOptionsHelper:Lcom/google/glass/timeline/VoiceOptionsHelper;

    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getCommandCreationUpTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    const/4 v4, 0x0

    const-string v5, "t"

    iget-object v6, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 156
    invoke-static {p0, v6}, Lcom/google/glass/timeline/VoiceOptionsHelper;->getTimelineItemDeletedListener(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/timeline/TimelineItemDeletedListener;

    move-result-object v6

    .line 154
    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/VoiceOptionsHelper;->triggerOkGlass(JLcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZLjava/lang/String;Lcom/google/glass/timeline/TimelineItemDeletedListener;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 245
    sget v0, Lcom/google/glass/home/R$layout;->read_more_html_activity:I

    return v0
.end method

.method protected shouldScreenOffFinish()Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method
