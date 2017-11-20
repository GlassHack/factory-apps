.class public Lcom/google/glass/browser/VerticalRecoverScroller;
.super Landroid/widget/Scroller;
.source "VerticalRecoverScroller.java"


# static fields
.field private static final UPDATE_DELAY_MS:J = 0x10L

.field private static final WHAT_MSG_CHECK_SCROLLER:I


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/browser/WebBrowserWebView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/google/glass/browser/WebBrowserWebView;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Lcom/google/glass/browser/VerticalRecoverScroller$1;

    invoke-direct {v0, p0}, Lcom/google/glass/browser/VerticalRecoverScroller$1;-><init>(Lcom/google/glass/browser/VerticalRecoverScroller;)V

    iput-object v0, p0, Lcom/google/glass/browser/VerticalRecoverScroller;->handler:Landroid/os/Handler;

    .line 45
    iput-object p2, p0, Lcom/google/glass/browser/VerticalRecoverScroller;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/browser/VerticalRecoverScroller;)Lcom/google/glass/browser/WebBrowserWebView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/browser/VerticalRecoverScroller;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/glass/browser/VerticalRecoverScroller;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/browser/VerticalRecoverScroller;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/browser/VerticalRecoverScroller;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/glass/browser/VerticalRecoverScroller;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public handleOverscroll()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/google/glass/browser/VerticalRecoverScroller;->reset()V

    .line 55
    iget-object v2, p0, Lcom/google/glass/browser/VerticalRecoverScroller;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v2}, Lcom/google/glass/browser/WebBrowserWebView;->getTranslationX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 56
    .local v0, "translationX":I
    iget-object v2, p0, Lcom/google/glass/browser/VerticalRecoverScroller;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v2}, Lcom/google/glass/browser/WebBrowserWebView;->getTranslationY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 57
    .local v1, "translationY":I
    if-eqz v1, :cond_0

    .line 58
    neg-int v2, v1

    invoke-virtual {p0, v0, v1, v5, v2}, Lcom/google/glass/browser/VerticalRecoverScroller;->startScroll(IIII)V

    .line 59
    iget-object v2, p0, Lcom/google/glass/browser/VerticalRecoverScroller;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x10

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 61
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/browser/VerticalRecoverScroller;->forceFinished(Z)V

    .line 50
    iget-object v0, p0, Lcom/google/glass/browser/VerticalRecoverScroller;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 51
    return-void
.end method
