.class Lcom/google/glass/browser/WebBrowserActivity$2;
.super Landroid/webkit/WebChromeClient;
.source "WebBrowserActivity.java"


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
    .line 489
    iput-object p1, p0, Lcom/google/glass/browser/WebBrowserActivity$2;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    const/16 v9, 0x64

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 492
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 493
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity$2;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v2}, Lcom/google/glass/browser/WebBrowserActivity;->access$900(Lcom/google/glass/browser/WebBrowserActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Progress loading [%s]: %s (loaded: [%s])"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/browser/WebBrowserActivity$2;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v5}, Lcom/google/glass/browser/WebBrowserActivity;->access$2000(Lcom/google/glass/browser/WebBrowserActivity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/glass/browser/WebBrowserActivity$2;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    iget-boolean v6, v6, Lcom/google/glass/browser/WebBrowserActivity;->loaded:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity$2;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    iget-boolean v2, v2, Lcom/google/glass/browser/WebBrowserActivity;->loaded:Z

    if-eqz v2, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity$2;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v2}, Lcom/google/glass/browser/WebBrowserActivity;->access$600(Lcom/google/glass/browser/WebBrowserActivity;)Lcom/google/glass/widget/SliderView;

    move-result-object v2

    int-to-float v3, p2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3, v8}, Lcom/google/glass/widget/SliderView;->setManualProgress(FZ)V

    .line 501
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity$2;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v2}, Lcom/google/glass/browser/WebBrowserActivity;->access$100(Lcom/google/glass/browser/WebBrowserActivity;)Lcom/google/glass/time/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 502
    .local v0, "now":J
    const/16 v2, 0x3c

    if-lt p2, v2, :cond_2

    if-ge p2, v9, :cond_2

    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity$2;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    .line 503
    invoke-static {v2}, Lcom/google/glass/browser/WebBrowserActivity;->access$1600(Lcom/google/glass/browser/WebBrowserActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity$2;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    .line 504
    invoke-static {v2}, Lcom/google/glass/browser/WebBrowserActivity;->access$800(Lcom/google/glass/browser/WebBrowserActivity;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x5dc

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 505
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity$2;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    iget-object v3, p0, Lcom/google/glass/browser/WebBrowserActivity$2;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v3}, Lcom/google/glass/browser/WebBrowserActivity;->access$100(Lcom/google/glass/browser/WebBrowserActivity;)Lcom/google/glass/time/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/glass/browser/WebBrowserActivity$2;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v5}, Lcom/google/glass/browser/WebBrowserActivity;->access$800(Lcom/google/glass/browser/WebBrowserActivity;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/google/glass/browser/WebBrowserActivity;->access$1202(Lcom/google/glass/browser/WebBrowserActivity;J)J

    .line 506
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity$2;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v2, p2}, Lcom/google/glass/browser/WebBrowserActivity;->access$1302(Lcom/google/glass/browser/WebBrowserActivity;I)I

    .line 507
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity$2;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    iget-object v2, v2, Lcom/google/glass/browser/WebBrowserActivity;->browserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v2, v7}, Lcom/google/glass/browser/WebBrowserWebView;->setVisibility(I)V

    .line 508
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity$2;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v2}, Lcom/google/glass/browser/WebBrowserActivity;->access$1600(Lcom/google/glass/browser/WebBrowserActivity;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 509
    :cond_2
    if-ge p2, v9, :cond_0

    .line 510
    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity$2;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v2}, Lcom/google/glass/browser/WebBrowserActivity;->access$600(Lcom/google/glass/browser/WebBrowserActivity;)Lcom/google/glass/widget/SliderView;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    goto :goto_0
.end method
