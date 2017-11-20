.class final Lcom/google/glass/browser/WebBrowserWebViewProvider;
.super Ljava/lang/Object;
.source "WebBrowserWebViewProvider.java"


# static fields
.field private static testInstance:Lcom/google/glass/browser/WebBrowserWebView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get(Landroid/content/Context;)Lcom/google/glass/browser/WebBrowserWebView;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    .line 25
    sget-object v0, Lcom/google/glass/browser/WebBrowserWebViewProvider;->testInstance:Lcom/google/glass/browser/WebBrowserWebView;

    .line 26
    .local v0, "instance":Lcom/google/glass/browser/WebBrowserWebView;
    if-eqz v0, :cond_0

    .line 33
    .end local v0    # "instance":Lcom/google/glass/browser/WebBrowserWebView;
    :goto_0
    return-object v0

    .line 30
    .restart local v0    # "instance":Lcom/google/glass/browser/WebBrowserWebView;
    :cond_0
    new-instance v1, Lcom/google/glass/browser/WebBrowserWebViewImpl;

    invoke-direct {v1, p0}, Lcom/google/glass/browser/WebBrowserWebViewImpl;-><init>(Landroid/content/Context;)V

    .line 31
    .local v1, "newInstance":Lcom/google/glass/browser/WebBrowserWebViewImpl;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/google/glass/browser/WebBrowserWebViewImpl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    .line 33
    goto :goto_0
.end method

.method static setTestInstance(Lcom/google/glass/browser/WebBrowserWebView;)V
    .locals 0
    .param p0, "instance"    # Lcom/google/glass/browser/WebBrowserWebView;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 43
    sput-object p0, Lcom/google/glass/browser/WebBrowserWebViewProvider;->testInstance:Lcom/google/glass/browser/WebBrowserWebView;

    .line 44
    return-void
.end method
