.class public Lcom/google/android/gsf/WebAddAccountView;
.super Ljava/lang/Object;
.source "WebAddAccountView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/WebAddAccountView$1;,
        Lcom/google/android/gsf/WebAddAccountView$MyWebViewClient;,
        Lcom/google/android/gsf/WebAddAccountView$MyChromeClient;,
        Lcom/google/android/gsf/WebAddAccountView$Callback;,
        Lcom/google/android/gsf/WebAddAccountView$Error;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebAddAccountView"


# instance fields
.field private mBackButton:Landroid/view/View;

.field private mBottomBar:Landroid/view/View;

.field private mCallback:Lcom/google/android/gsf/WebAddAccountView$Callback;

.field private mCancelButton:Landroid/view/View;

.field private mDomainName:Ljava/lang/String;

.field private mIsLoading:Z

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressView:Landroid/view/View;

.field private mStartUrl:Ljava/lang/String;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mTitleView:Landroid/view/View;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Landroid/view/View;Landroid/widget/ProgressBar;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Lcom/google/android/gsf/WebAddAccountView$Callback;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "progressView"    # Landroid/view/View;
    .param p3, "progressBar"    # Landroid/widget/ProgressBar;
    .param p4, "backButton"    # Landroid/view/View;
    .param p5, "cancelButton"    # Landroid/view/View;
    .param p6, "titleView"    # Landroid/view/View;
    .param p7, "titleTextView"    # Landroid/widget/TextView;
    .param p8, "bottomBar"    # Landroid/view/View;
    .param p9, "callback"    # Lcom/google/android/gsf/WebAddAccountView$Callback;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/google/android/gsf/WebAddAccountView;->mWebView:Landroid/webkit/WebView;

    .line 91
    iput-object p2, p0, Lcom/google/android/gsf/WebAddAccountView;->mProgressView:Landroid/view/View;

    .line 92
    iput-object p3, p0, Lcom/google/android/gsf/WebAddAccountView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 93
    iget-object v0, p0, Lcom/google/android/gsf/WebAddAccountView;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 94
    iput-object p9, p0, Lcom/google/android/gsf/WebAddAccountView;->mCallback:Lcom/google/android/gsf/WebAddAccountView$Callback;

    .line 95
    iput-object p4, p0, Lcom/google/android/gsf/WebAddAccountView;->mBackButton:Landroid/view/View;

    .line 96
    iput-object p5, p0, Lcom/google/android/gsf/WebAddAccountView;->mCancelButton:Landroid/view/View;

    .line 97
    iput-object p6, p0, Lcom/google/android/gsf/WebAddAccountView;->mTitleView:Landroid/view/View;

    .line 98
    iput-object p7, p0, Lcom/google/android/gsf/WebAddAccountView;->mTitleTextView:Landroid/widget/TextView;

    .line 99
    iput-object p8, p0, Lcom/google/android/gsf/WebAddAccountView;->mBottomBar:Landroid/view/View;

    .line 100
    invoke-direct {p0}, Lcom/google/android/gsf/WebAddAccountView;->setupOptionsAndCallbacks()V

    .line 101
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/gsf/WebAddAccountView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/WebAddAccountView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/WebAddAccountView;->mCancelButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gsf/WebAddAccountView;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/WebAddAccountView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/WebAddAccountView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gsf/WebAddAccountView;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/WebAddAccountView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/WebAddAccountView;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gsf/WebAddAccountView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/WebAddAccountView;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/google/android/gsf/WebAddAccountView;->mIsLoading:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/gsf/WebAddAccountView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/WebAddAccountView;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/google/android/gsf/WebAddAccountView;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/gsf/WebAddAccountView;)Lcom/google/android/gsf/WebAddAccountView$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/WebAddAccountView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/WebAddAccountView;->mCallback:Lcom/google/android/gsf/WebAddAccountView$Callback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/gsf/WebAddAccountView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/WebAddAccountView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/WebAddAccountView;->mTitleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/gsf/WebAddAccountView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/WebAddAccountView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/WebAddAccountView;->mBottomBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/gsf/WebAddAccountView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/WebAddAccountView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/WebAddAccountView;->mProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/gsf/WebAddAccountView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/WebAddAccountView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/WebAddAccountView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private doLogin()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 119
    iget-object v0, p0, Lcom/google/android/gsf/WebAddAccountView;->mTitleView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/google/android/gsf/WebAddAccountView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/google/android/gsf/WebAddAccountView;->mBackButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/google/android/gsf/WebAddAccountView;->mCancelButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/google/android/gsf/WebAddAccountView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 124
    iget-object v0, p0, Lcom/google/android/gsf/WebAddAccountView;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/google/android/gsf/WebAddAccountView;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/android/gsf/WebAddAccountView;->mStartUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/WebAddAccountView;->mIsLoading:Z

    .line 127
    return-void
.end method

.method private setupOptionsAndCallbacks()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 143
    iget-object v1, p0, Lcom/google/android/gsf/WebAddAccountView;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/google/android/gsf/WebAddAccountView$MyWebViewClient;

    invoke-direct {v2, p0, v5}, Lcom/google/android/gsf/WebAddAccountView$MyWebViewClient;-><init>(Lcom/google/android/gsf/WebAddAccountView;Lcom/google/android/gsf/WebAddAccountView$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 144
    iget-object v1, p0, Lcom/google/android/gsf/WebAddAccountView;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/google/android/gsf/WebAddAccountView$MyChromeClient;

    invoke-direct {v2, p0, v5}, Lcom/google/android/gsf/WebAddAccountView$MyChromeClient;-><init>(Lcom/google/android/gsf/WebAddAccountView;Lcom/google/android/gsf/WebAddAccountView$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 145
    iget-object v1, p0, Lcom/google/android/gsf/WebAddAccountView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 146
    .local v0, "s":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 147
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 149
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 150
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 151
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 152
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 153
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 155
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 156
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 157
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 158
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 160
    iget-object v1, p0, Lcom/google/android/gsf/WebAddAccountView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setMapTrackballToArrowKeys(Z)V

    .line 161
    iget-object v1, p0, Lcom/google/android/gsf/WebAddAccountView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 162
    iget-object v1, p0, Lcom/google/android/gsf/WebAddAccountView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 163
    return-void
.end method


# virtual methods
.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "startUrl"    # Ljava/lang/String;
    .param p2, "domainName"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/gsf/WebAddAccountView;->mStartUrl:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/google/android/gsf/WebAddAccountView;->mDomainName:Ljava/lang/String;

    .line 112
    invoke-direct {p0}, Lcom/google/android/gsf/WebAddAccountView;->doLogin()V

    .line 113
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/google/android/gsf/WebAddAccountView;->mIsLoading:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/google/android/gsf/WebAddAccountView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/WebAddAccountView;->mIsLoading:Z

    .line 137
    :cond_0
    return-void
.end method
