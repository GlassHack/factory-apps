.class Lcom/google/glass/browser/WebBrowserWebViewImpl;
.super Landroid/webkit/WebView;
.source "WebBrowserWebViewImpl.java"

# interfaces
.implements Lcom/google/glass/browser/WebBrowserWebView;


# instance fields
.field private centerX:F

.field private centerY:F

.field private maxX:F

.field private maxY:F

.field private minX:F

.field private minY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 18
    iput v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->minX:F

    .line 20
    iput v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->minY:F

    .line 22
    iget v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->minX:F

    iget v1, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->maxX:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->centerX:F

    .line 23
    iget v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->minY:F

    iget v1, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->maxY:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->centerY:F

    .line 27
    invoke-direct {p0}, Lcom/google/glass/browser/WebBrowserWebViewImpl;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->minX:F

    .line 20
    iput v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->minY:F

    .line 22
    iget v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->minX:F

    iget v1, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->maxX:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->centerX:F

    .line 23
    iget v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->minY:F

    iget v1, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->maxY:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->centerY:F

    .line 32
    invoke-direct {p0}, Lcom/google/glass/browser/WebBrowserWebViewImpl;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    iput v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->minX:F

    .line 20
    iput v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->minY:F

    .line 22
    iget v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->minX:F

    iget v1, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->maxX:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->centerX:F

    .line 23
    iget v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->minY:F

    iget v1, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->maxY:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->centerY:F

    .line 37
    invoke-direct {p0}, Lcom/google/glass/browser/WebBrowserWebViewImpl;->init()V

    .line 38
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 44
    invoke-virtual {p0}, Lcom/google/glass/browser/WebBrowserWebViewImpl;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 45
    .local v0, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 46
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 47
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 48
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 49
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 55
    invoke-static {}, Lcom/google/glass/net/UserAgentProvider;->getInstance()Lcom/google/glass/net/UserAgentProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/net/UserAgentProvider;->get()Lcom/google/glass/net/UserAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/net/UserAgent;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, v3}, Lcom/google/glass/browser/WebBrowserWebViewImpl;->setHorizontalScrollBarEnabled(Z)V

    .line 58
    invoke-virtual {p0, v2}, Lcom/google/glass/browser/WebBrowserWebViewImpl;->setScrollbarFadingEnabled(Z)V

    .line 61
    new-instance v1, Lcom/google/glass/browser/WebBrowserWebViewImpl$1;

    invoke-direct {v1, p0}, Lcom/google/glass/browser/WebBrowserWebViewImpl$1;-><init>(Lcom/google/glass/browser/WebBrowserWebViewImpl;)V

    invoke-virtual {p0, v1}, Lcom/google/glass/browser/WebBrowserWebViewImpl;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 67
    invoke-virtual {p0, v3}, Lcom/google/glass/browser/WebBrowserWebViewImpl;->setLongClickable(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/google/glass/browser/WebBrowserWebViewImpl;->resetTranslation()V

    .line 70
    return-void
.end method


# virtual methods
.method public computeRealHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/webkit/WebView;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeRealVerticalScrollRange()I
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/webkit/WebView;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public getCenterX()F
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->centerX:F

    return v0
.end method

.method public getCenterY()F
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->centerY:F

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/glass/browser/WebBrowserWebViewImpl;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public getMaxX()F
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->maxX:F

    return v0
.end method

.method public getMaxY()F
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->maxY:F

    return v0
.end method

.method public getMinX()F
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->minX:F

    return v0
.end method

.method public getMinY()F
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->minY:F

    return v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 0

    .prologue
    .line 205
    return-object p0
.end method

.method public onScrollChanged()V
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/google/glass/browser/WebBrowserWebViewImpl;->getScrollX()I

    move-result v0

    .line 151
    .local v0, "scrollX":I
    invoke-virtual {p0}, Lcom/google/glass/browser/WebBrowserWebViewImpl;->getScrollY()I

    move-result v1

    .line 152
    .local v1, "scrollY":I
    invoke-super {p0, v0, v1, v0, v1}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 153
    return-void
.end method

.method public resetTranslation()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 79
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 81
    invoke-virtual {p0, v4}, Lcom/google/glass/browser/WebBrowserWebViewImpl;->setTranslationX(F)V

    .line 82
    invoke-virtual {p0, v4}, Lcom/google/glass/browser/WebBrowserWebViewImpl;->setTranslationY(F)V

    .line 84
    invoke-virtual {p0}, Lcom/google/glass/browser/WebBrowserWebViewImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 85
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 87
    .local v0, "display":Landroid/view/Display;
    iput v4, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->minX:F

    .line 88
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->maxX:F

    .line 89
    iput v4, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->minY:F

    .line 90
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->maxY:F

    .line 91
    iget v2, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->minX:F

    iget v3, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->maxX:F

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    iput v2, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->centerX:F

    .line 92
    iget v2, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->minY:F

    iget v3, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->maxY:F

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    iput v2, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->centerY:F

    .line 93
    return-void
.end method

.method public setTranslationX(F)V
    .locals 4
    .param p1, "translationX"    # F

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setTranslationX(F)V

    .line 110
    const/4 v0, 0x0

    neg-float v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->minX:F

    .line 111
    invoke-virtual {p0}, Lcom/google/glass/browser/WebBrowserWebViewImpl;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/glass/browser/WebBrowserWebViewImpl;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->maxX:F

    .line 112
    iget v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->minX:F

    iget v1, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->maxX:F

    add-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->centerX:F

    .line 113
    return-void
.end method

.method public setTranslationY(F)V
    .locals 4
    .param p1, "translationY"    # F

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setTranslationY(F)V

    .line 124
    const/4 v0, 0x0

    neg-float v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->minY:F

    .line 125
    invoke-virtual {p0}, Lcom/google/glass/browser/WebBrowserWebViewImpl;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/glass/browser/WebBrowserWebViewImpl;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->maxY:F

    .line 126
    iget v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->minY:F

    iget v1, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->maxY:F

    add-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/google/glass/browser/WebBrowserWebViewImpl;->centerY:F

    .line 127
    return-void
.end method
