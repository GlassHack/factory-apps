.class public Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;
.super Ljava/lang/Object;
.source "WebBrowserPreloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/browser/WebBrowserPreloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreloadedWebBrowserWebView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;
    }
.end annotation


# instance fields
.field private final clock:Lcom/google/glass/time/Clock;

.field private errorCode:I

.field private errorDescription:Ljava/lang/String;

.field private loadingSemaphore:Ljava/util/concurrent/Semaphore;

.field private preloadStartTime:J

.field volatile state:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final url:Ljava/lang/String;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private final webBrowser:Lcom/google/glass/browser/WebBrowserWebView;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/glass/browser/WebBrowserWebView;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/time/Clock;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "webBrowser"    # Lcom/google/glass/browser/WebBrowserWebView;
    .param p3, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p4, "clock"    # Lcom/google/glass/time/Clock;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->loadingSemaphore:Ljava/util/concurrent/Semaphore;

    .line 211
    sget-object v0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;->INIT:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

    iput-object v0, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->state:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

    .line 234
    iput-object p1, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->url:Ljava/lang/String;

    .line 235
    iput-object p2, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->webBrowser:Lcom/google/glass/browser/WebBrowserWebView;

    .line 236
    iput-object p3, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 237
    iput-object p4, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->clock:Lcom/google/glass/time/Clock;

    .line 239
    new-instance v0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$1;

    invoke-direct {v0, p0, p3, p4}, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$1;-><init>(Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/time/Clock;)V

    invoke-interface {p2, v0}, Lcom/google/glass/browser/WebBrowserWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 273
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->load()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;)Lcom/google/glass/browser/WebBrowserWebView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->webBrowser:Lcom/google/glass/browser/WebBrowserWebView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->preloadStartTime:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->loadingSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;
    .param p1, "x1"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->errorCode:I

    return p1
.end method

.method static synthetic access$702(Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->errorDescription:Ljava/lang/String;

    return-object p1
.end method

.method private load()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 304
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 305
    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->loadingSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 306
    sget-object v1, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;->LOADING:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

    iput-object v1, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->state:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

    .line 307
    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v1}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->preloadStartTime:J

    .line 308
    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->webBrowser:Lcom/google/glass/browser/WebBrowserWebView;

    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->url:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/glass/browser/WebBrowserWebView;->loadUrl(Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PRELOAD_REQUESTED:Lcom/google/glass/userevent/UserEventAction;

    const-string v3, "url"

    iget-object v4, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->url:Ljava/lang/String;

    new-array v5, v6, [Ljava/lang/Object;

    .line 310
    invoke-static {v3, v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 309
    invoke-virtual {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/google/glass/browser/WebBrowserPreloadService;->access$800()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    monitor-enter v2

    .line 315
    :try_start_0
    invoke-static {}, Lcom/google/glass/browser/WebBrowserPreloadService;->access$800()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    new-instance v3, Lcom/google/glass/browser/WebBrowserPreloadService$SoftReferenceWithUrl;

    iget-object v4, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->url:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lcom/google/glass/browser/WebBrowserPreloadService$SoftReferenceWithUrl;-><init>(Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/browser/WebBrowserPreloadService$SoftReferenceWithUrl;

    .line 316
    .local v0, "previousPreloadedRef":Lcom/google/glass/browser/WebBrowserPreloadService$SoftReferenceWithUrl;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    if-eqz v0, :cond_0

    .line 318
    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PRELOAD_WASTED:Lcom/google/glass/userevent/UserEventAction;

    const-string v3, "url"

    .line 319
    invoke-static {v0}, Lcom/google/glass/browser/WebBrowserPreloadService$SoftReferenceWithUrl;->access$200(Lcom/google/glass/browser/WebBrowserPreloadService$SoftReferenceWithUrl;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 318
    invoke-virtual {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 321
    :cond_0
    return-void

    .line 316
    .end local v0    # "previousPreloadedRef":Lcom/google/glass/browser/WebBrowserPreloadService$SoftReferenceWithUrl;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method getErrorCode()I
    .locals 1

    .prologue
    .line 288
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 289
    iget v0, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->errorCode:I

    return v0
.end method

.method getErrorDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 294
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->errorDescription:Ljava/lang/String;

    return-object v0
.end method

.method getState()Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->state:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

    return-object v0
.end method

.method getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->url:Ljava/lang/String;

    return-object v0
.end method

.method getWebBrowser()Lcom/google/glass/browser/WebBrowserWebView;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->webBrowser:Lcom/google/glass/browser/WebBrowserWebView;

    return-object v0
.end method

.method waitUntilLoaded()V
    .locals 2

    .prologue
    .line 329
    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->loadingSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->loadingSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 340
    :goto_0
    return-void

    .line 335
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->loadingSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->loadingSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
