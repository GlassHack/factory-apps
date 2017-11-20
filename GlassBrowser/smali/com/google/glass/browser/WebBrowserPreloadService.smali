.class public Lcom/google/glass/browser/WebBrowserPreloadService;
.super Landroid/app/Service;
.source "WebBrowserPreloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;,
        Lcom/google/glass/browser/WebBrowserPreloadService$SoftReferenceWithUrl;
    }
.end annotation


# static fields
.field public static final ACTION_PRELOAD:Ljava/lang/String; = "com.google.glass.browser.ACTION_PRELOAD"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final preloadedRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/glass/browser/WebBrowserPreloadService$SoftReferenceWithUrl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final clock:Lcom/google/glass/time/Clock;

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "browser"

    .line 31
    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/browser/WebBrowserPreloadService;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/glass/browser/WebBrowserPreloadService;->preloadedRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/browser/WebBrowserPreloadService;->clock:Lcom/google/glass/time/Clock;

    .line 56
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/browser/WebBrowserPreloadService;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 57
    return-void
.end method

.method static synthetic access$300()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/glass/browser/WebBrowserPreloadService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/glass/browser/WebBrowserPreloadService;->preloadedRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method private removePreloadedWebView()V
    .locals 5

    .prologue
    .line 98
    sget-object v3, Lcom/google/glass/browser/WebBrowserPreloadService;->preloadedRef:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v3

    .line 99
    :try_start_0
    sget-object v2, Lcom/google/glass/browser/WebBrowserPreloadService;->preloadedRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/browser/WebBrowserPreloadService$SoftReferenceWithUrl;

    .line 100
    .local v1, "preloadedWebViewReference":Lcom/google/glass/browser/WebBrowserPreloadService$SoftReferenceWithUrl;
    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v1}, Lcom/google/glass/browser/WebBrowserPreloadService$SoftReferenceWithUrl;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    .line 103
    .local v0, "preloadedWebView":Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->access$100(Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;)Lcom/google/glass/browser/WebBrowserWebView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 104
    invoke-static {v0}, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->access$100(Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;)Lcom/google/glass/browser/WebBrowserWebView;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/browser/WebBrowserWebView;->destroy()V

    .line 107
    .end local v0    # "preloadedWebView":Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;
    :cond_0
    monitor-exit v3

    .line 108
    return-void

    .line 107
    .end local v1    # "preloadedWebViewReference":Lcom/google/glass/browser/WebBrowserPreloadService$SoftReferenceWithUrl;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static setPreloadedForTest(Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;Ljava/lang/String;)V
    .locals 2
    .param p0, "webBrowserWebView"    # Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 149
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 150
    sget-object v0, Lcom/google/glass/browser/WebBrowserPreloadService;->preloadedRef:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/glass/browser/WebBrowserPreloadService$SoftReferenceWithUrl;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/browser/WebBrowserPreloadService$SoftReferenceWithUrl;-><init>(Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 151
    return-void
.end method

.method public static tryGetPreloaded(Ljava/lang/String;)Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 132
    sget-object v2, Lcom/google/glass/browser/WebBrowserPreloadService;->preloadedRef:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 133
    :try_start_0
    sget-object v3, Lcom/google/glass/browser/WebBrowserPreloadService;->preloadedRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/browser/WebBrowserPreloadService$SoftReferenceWithUrl;

    .line 134
    .local v0, "preloadedWebViewReference":Lcom/google/glass/browser/WebBrowserPreloadService$SoftReferenceWithUrl;
    if-nez v0, :cond_0

    .line 135
    monitor-exit v2

    .line 143
    :goto_0
    return-object v1

    .line 138
    :cond_0
    invoke-static {v0}, Lcom/google/glass/browser/WebBrowserPreloadService$SoftReferenceWithUrl;->access$200(Lcom/google/glass/browser/WebBrowserPreloadService$SoftReferenceWithUrl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 139
    monitor-exit v2

    goto :goto_0

    .line 144
    .end local v0    # "preloadedWebViewReference":Lcom/google/glass/browser/WebBrowserPreloadService$SoftReferenceWithUrl;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 142
    .restart local v0    # "preloadedWebViewReference":Lcom/google/glass/browser/WebBrowserPreloadService$SoftReferenceWithUrl;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/google/glass/browser/WebBrowserPreloadService;->preloadedRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 143
    invoke-virtual {v0}, Lcom/google/glass/browser/WebBrowserPreloadService$SoftReferenceWithUrl;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 90
    sget-object v0, Lcom/google/glass/browser/WebBrowserPreloadService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onDestroy()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-direct {p0}, Lcom/google/glass/browser/WebBrowserPreloadService;->removePreloadedWebView()V

    .line 94
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 95
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 67
    const-string v2, "com.google.glass.browser.ACTION_PRELOAD"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Unsupported action in intent: [%s]"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "url":Ljava/lang/String;
    sget-object v2, Lcom/google/glass/browser/WebBrowserPreloadService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Preloading url: [%s]%n"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p0}, Lcom/google/glass/browser/WebBrowserPreloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    .line 76
    invoke-static {v0}, Lcom/google/glass/browser/WebBrowserWebViewProvider;->get(Landroid/content/Context;)Lcom/google/glass/browser/WebBrowserWebView;

    move-result-object v3

    new-instance v4, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v4, v0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/google/glass/browser/WebBrowserPreloadService;->clock:Lcom/google/glass/time/Clock;

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;-><init>(Ljava/lang/String;Lcom/google/glass/browser/WebBrowserWebView;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/time/Clock;)V

    .line 78
    invoke-static {v2}, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->access$000(Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;)V

    .line 80
    const/4 v2, 0x2

    return v2
.end method

.method public onTrimMemory(I)V
    .locals 8
    .param p1, "level"    # I

    .prologue
    const/4 v7, 0x0

    .line 112
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    .line 114
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserPreloadService;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserPreloadService;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->TRIM_MEMORY:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "a"

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "l"

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 121
    :cond_0
    const/16 v0, 0xa

    if-lt p1, v0, :cond_1

    .line 122
    sget-object v0, Lcom/google/glass/browser/WebBrowserPreloadService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "System is running low on memory; clearing preloaded WebView."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    invoke-direct {p0}, Lcom/google/glass/browser/WebBrowserPreloadService;->removePreloadedWebView()V

    .line 125
    :cond_1
    return-void
.end method
