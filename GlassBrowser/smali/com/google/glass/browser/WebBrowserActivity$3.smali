.class Lcom/google/glass/browser/WebBrowserActivity$3;
.super Ljava/lang/Object;
.source "WebBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/browser/WebBrowserActivity;->onCreateInternal(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/browser/WebBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/browser/WebBrowserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/browser/WebBrowserActivity;

    .prologue
    .line 529
    iput-object p1, p0, Lcom/google/glass/browser/WebBrowserActivity$3;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity$3;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    iget-object v0, v0, Lcom/google/glass/browser/WebBrowserActivity;->preloadedView:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    invoke-virtual {v0}, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->waitUntilLoaded()V

    .line 533
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/browser/WebBrowserActivity$3$1;

    invoke-direct {v1, p0}, Lcom/google/glass/browser/WebBrowserActivity$3$1;-><init>(Lcom/google/glass/browser/WebBrowserActivity$3;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 540
    return-void
.end method
