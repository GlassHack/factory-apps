.class public abstract Lcom/google/glass/home/timeline/PreloadHtmlTask;
.super Lcom/google/glass/home/timeline/PreloadTask;
.source "PreloadHtmlTask.java"


# static fields
.field private static final HTML_RESOURCE_WAIT_TIME_SECONDS:I = 0x5

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final cache:Lcom/google/glass/html/PagedWebViewCache;

.field private final context:Landroid/content/Context;

.field private final item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private final siteLoadedListener:Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;

.field private final siteLoadingLatch:Ljava/util/concurrent/CountDownLatch;

.field private final stopWatch:Lcom/google/glass/time/Stopwatch;

.field private webView:Lcom/google/glass/html/PagedWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/PreloadHtmlTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/glass/home/timeline/PreloadTask;-><init>()V

    .line 30
    new-instance v0, Lcom/google/glass/home/timeline/PreloadHtmlTask$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/PreloadHtmlTask$1;-><init>(Lcom/google/glass/home/timeline/PreloadHtmlTask;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/PreloadHtmlTask;->siteLoadedListener:Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;

    .line 46
    iput-object p2, p0, Lcom/google/glass/home/timeline/PreloadHtmlTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 47
    iput-object p1, p0, Lcom/google/glass/home/timeline/PreloadHtmlTask;->context:Landroid/content/Context;

    .line 50
    invoke-static {}, Lcom/google/glass/html/PagedWebViewCacheProvider;->getInstance()Lcom/google/glass/html/PagedWebViewCacheProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/html/PagedWebViewCacheProvider;->get()Lcom/google/glass/html/PagedWebViewCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/PreloadHtmlTask;->cache:Lcom/google/glass/html/PagedWebViewCache;

    .line 52
    new-instance v0, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v0}, Lcom/google/glass/time/Stopwatch;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/timeline/PreloadHtmlTask;->stopWatch:Lcom/google/glass/time/Stopwatch;

    .line 53
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/PreloadHtmlTask;->siteLoadingLatch:Ljava/util/concurrent/CountDownLatch;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/PreloadHtmlTask;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/PreloadHtmlTask;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/home/timeline/PreloadHtmlTask;->siteLoadingLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/home/timeline/PreloadHtmlTask;->siteLoadingLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    sget-object v1, Lcom/google/glass/home/timeline/PreloadHtmlTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Timed out while loading HTML resources."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 79
    :goto_0
    return-object v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/google/glass/home/timeline/PreloadHtmlTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Interrupted while waiting for HTML resources."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 79
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/PreloadHtmlTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 12
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 85
    iget-object v4, p0, Lcom/google/glass/home/timeline/PreloadHtmlTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v4, v10}, Lcom/google/glass/html/PagedWebViewCache;->generateKey(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Lcom/google/glass/html/PagedWebViewCache$Key;

    move-result-object v0

    .line 86
    .local v0, "key":Lcom/google/glass/html/PagedWebViewCache$Key;
    sget-object v4, Lcom/google/glass/home/timeline/PreloadHtmlTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Adding %s to the cache."

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v0, v6, v10

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v4, p0, Lcom/google/glass/home/timeline/PreloadHtmlTask;->cache:Lcom/google/glass/html/PagedWebViewCache;

    iget-object v5, p0, Lcom/google/glass/home/timeline/PreloadHtmlTask;->webView:Lcom/google/glass/html/PagedWebView;

    invoke-virtual {v4, v0, v5}, Lcom/google/glass/html/PagedWebViewCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v4, p0, Lcom/google/glass/home/timeline/PreloadHtmlTask;->stopWatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v4}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v1

    .line 92
    .local v1, "renderTime":J
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "0"

    .line 95
    .local v3, "timeout":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/google/glass/home/timeline/PreloadHtmlTask;->onPreloadComplete(J)V

    .line 97
    new-instance v4, Lcom/google/glass/userevent/UserEventHelper;

    iget-object v5, p0, Lcom/google/glass/home/timeline/PreloadHtmlTask;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/google/glass/userevent/UserEventAction;->NOTIFICATION_HTML_PRELOAD:Lcom/google/glass/userevent/UserEventAction;

    const-string v6, "t"

    .line 99
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "e"

    aput-object v9, v8, v10

    aput-object v3, v8, v11

    .line 98
    invoke-static {v6, v7, v8}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 97
    invoke-virtual {v4, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 101
    return-void

    .line 92
    .end local v3    # "timeout":Ljava/lang/String;
    :cond_0
    const-string v3, "1"

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/PreloadHtmlTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 58
    new-instance v1, Lcom/google/glass/html/PagedWebView;

    iget-object v2, p0, Lcom/google/glass/home/timeline/PreloadHtmlTask;->context:Landroid/content/Context;

    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/CachedBitmapFactory;

    invoke-direct {v1, v2, v0}, Lcom/google/glass/html/PagedWebView;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)V

    iput-object v1, p0, Lcom/google/glass/home/timeline/PreloadHtmlTask;->webView:Lcom/google/glass/html/PagedWebView;

    .line 59
    iget-object v0, p0, Lcom/google/glass/home/timeline/PreloadHtmlTask;->stopWatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 60
    iget-object v0, p0, Lcom/google/glass/home/timeline/PreloadHtmlTask;->webView:Lcom/google/glass/html/PagedWebView;

    iget-object v1, p0, Lcom/google/glass/home/timeline/PreloadHtmlTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/google/glass/home/timeline/PreloadHtmlTask;->siteLoadedListener:Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;

    move v4, v3

    move-object v6, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Lcom/google/glass/html/PagedWebView;->render(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZZLcom/google/glass/html/PagedWebView$OnPageCountChangeListener;Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;Ljava/lang/String;)V

    .line 61
    return-void
.end method
