.class Lcom/google/glass/browser/VerticalRecoverScroller$1;
.super Landroid/os/Handler;
.source "VerticalRecoverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/browser/VerticalRecoverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/browser/VerticalRecoverScroller;


# direct methods
.method constructor <init>(Lcom/google/glass/browser/VerticalRecoverScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/browser/VerticalRecoverScroller;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/glass/browser/VerticalRecoverScroller$1;->this$0:Lcom/google/glass/browser/VerticalRecoverScroller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 23
    iget v2, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    iget-object v2, p0, Lcom/google/glass/browser/VerticalRecoverScroller$1;->this$0:Lcom/google/glass/browser/VerticalRecoverScroller;

    invoke-virtual {v2}, Lcom/google/glass/browser/VerticalRecoverScroller;->computeScrollOffset()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 33
    .local v0, "animationFinished":Z
    :goto_1
    if-nez v0, :cond_0

    .line 34
    iget-object v2, p0, Lcom/google/glass/browser/VerticalRecoverScroller$1;->this$0:Lcom/google/glass/browser/VerticalRecoverScroller;

    invoke-static {v2}, Lcom/google/glass/browser/VerticalRecoverScroller;->access$000(Lcom/google/glass/browser/VerticalRecoverScroller;)Lcom/google/glass/browser/WebBrowserWebView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/browser/VerticalRecoverScroller$1;->this$0:Lcom/google/glass/browser/VerticalRecoverScroller;

    invoke-virtual {v3}, Lcom/google/glass/browser/VerticalRecoverScroller;->getCurrY()I

    move-result v3

    int-to-float v3, v3

    invoke-interface {v2, v3}, Lcom/google/glass/browser/WebBrowserWebView;->setTranslationY(F)V

    .line 35
    iget-object v2, p0, Lcom/google/glass/browser/VerticalRecoverScroller$1;->this$0:Lcom/google/glass/browser/VerticalRecoverScroller;

    invoke-static {v2}, Lcom/google/glass/browser/VerticalRecoverScroller;->access$000(Lcom/google/glass/browser/VerticalRecoverScroller;)Lcom/google/glass/browser/WebBrowserWebView;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/browser/WebBrowserWebView;->onScrollChanged()V

    .line 36
    iget-object v2, p0, Lcom/google/glass/browser/VerticalRecoverScroller$1;->this$0:Lcom/google/glass/browser/VerticalRecoverScroller;

    invoke-static {v2}, Lcom/google/glass/browser/VerticalRecoverScroller;->access$100(Lcom/google/glass/browser/VerticalRecoverScroller;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x10

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .end local v0    # "animationFinished":Z
    :cond_2
    move v0, v1

    .line 32
    goto :goto_1
.end method
