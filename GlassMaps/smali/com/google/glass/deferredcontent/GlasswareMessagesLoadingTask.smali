.class public Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;
.super Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;
.source "SourceFile"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private receiver:Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask$MessagesReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/net/ProtoRequestDispatcher;Landroid/util/LruCache;Lcom/google/glass/time/Clock;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask$MessagesReceiver;)V
    .locals 10

    .prologue
    .line 62
    const/4 v9, 0x4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/net/ProtoRequestDispatcher;Landroid/util/LruCache;Lcom/google/glass/time/Clock;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    .line 64
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->receiver:Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask$MessagesReceiver;

    .line 65
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static getGlasswareName(JLcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;)Ljava/lang/String;
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 167
    cmp-long v0, p0, v5

    if-lez v0, :cond_0

    .line 169
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 172
    :cond_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 173
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 176
    new-instance v0, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask$1;

    invoke-direct {v0, v2, v1}, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask$1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    .line 183
    invoke-direct {p2, v0}, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->setMessagesReceiver(Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask$MessagesReceiver;)V

    .line 185
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsUiThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    invoke-virtual {v0, p2}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->load(Lcom/google/glass/deferredcontent/LoadingTask;)V

    .line 193
    :goto_0
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 194
    if-nez v0, :cond_3

    .line 195
    cmp-long v0, p0, v5

    if-lez v0, :cond_2

    .line 196
    sget-object v0, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Timed out waiting for glassware name"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    :goto_1
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_2
    return-object v0

    .line 188
    :cond_1
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    invoke-virtual {v0, p2}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->postLoadToUiThread(Lcom/google/glass/deferredcontent/LoadingTask;)V

    goto :goto_0

    .line 198
    :cond_2
    :try_start_1
    sget-object v0, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No glassware name available in cache"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 204
    :catch_0
    move-exception v0

    .line 205
    sget-object v1, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Interrupted waiting for glassware name"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    invoke-virtual {p2, v4}, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->cancel(Z)V

    .line 207
    throw v0

    .line 211
    :cond_3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;

    .line 212
    if-nez v0, :cond_4

    .line 213
    sget-object v0, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Failed to load glassware name"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    const-string v0, ""

    goto :goto_2

    .line 217
    :cond_4
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->hasSpeakableName()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 218
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->getSpeakableName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 220
    :cond_5
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->hasName()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 221
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 224
    :cond_6
    sget-object v0, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Glassware has no defined name."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    const-string v0, ""

    goto :goto_2
.end method

.method public static getGlasswareName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "api:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    :cond_0
    sget-object v0, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No glassware resources available for this entity"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    const-string v0, ""

    .line 120
    :goto_0
    return-object v0

    .line 118
    :cond_1
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->getProjectId(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {p0, v0, p2, p3}, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->getGlasswareName(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getGlasswareName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "api:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    :cond_0
    sget-object v0, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No glassware resources available for this timeline item"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    const-string v0, ""

    .line 86
    :goto_0
    return-object v0

    .line 84
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "api:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {p0, v0, p2, p3}, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->getGlasswareName(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getGlasswareName(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;
    .locals 9

    .prologue
    .line 149
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->getPrimaryDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v3

    .line 151
    new-instance v0, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;

    .line 153
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v2

    sget-object v4, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->SHARED_CACHE:Landroid/util/LruCache;

    .line 156
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v5

    .line 157
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    invoke-virtual {v1}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->getIoTaskExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    const/4 v8, 0x0

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/net/ProtoRequestDispatcher;Landroid/util/LruCache;Lcom/google/glass/time/Clock;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask$MessagesReceiver;)V

    .line 161
    invoke-static {p2, p3, v0}, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->getGlasswareName(JLcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGlasswareNameImmediately(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v0, v1}, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->getGlasswareName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 129
    :catch_0
    move-exception v0

    .line 131
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static getGlasswareNameImmediately(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v0, v1}, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->getGlasswareName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 93
    :catch_0
    move-exception v0

    .line 95
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private setMessagesReceiver(Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask$MessagesReceiver;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->receiver:Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask$MessagesReceiver;

    .line 230
    return-void
.end method


# virtual methods
.method protected bindContent(Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;)V
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->receiver:Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask$MessagesReceiver;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->receiver:Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask$MessagesReceiver;

    invoke-interface {v0, p1}, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask$MessagesReceiver;->onMessagesLoaded(Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;)V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    sget-object v0, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Got glassware messages without a receiver to deliver them to."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;

    invoke-virtual {p0, p1}, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->bindContent(Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;)V

    return-void
.end method

.method protected getUserEventTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    const-string v0, "gm"

    return-object v0
.end method

.method protected newCacheEntry()Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask$NameCacheEntry;

    invoke-direct {v0}, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask$NameCacheEntry;-><init>()V

    return-object v0
.end method

.method protected prepareContent(F)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 239
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->loadContentFromCache()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;

    .line 240
    if-eqz v0, :cond_0

    .line 241
    iget-object v1, p0, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->receiver:Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask$MessagesReceiver;

    if-eqz v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->receiver:Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask$MessagesReceiver;

    invoke-interface {v1, v0}, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask$MessagesReceiver;->onMessagesLoaded(Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;)V

    .line 246
    :goto_0
    invoke-virtual {p0, v3}, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->cancel(Z)V

    .line 248
    :cond_0
    return-void

    .line 244
    :cond_1
    sget-object v0, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Got glassware messages without a receiver to deliver them to."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
