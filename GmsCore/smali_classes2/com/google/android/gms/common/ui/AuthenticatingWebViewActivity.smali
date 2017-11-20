.class public Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;
.super Landroid/support/v7/a/d;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/util/ab;


# instance fields
.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:Landroid/widget/ProgressBar;

.field private r:Ljava/lang/String;

.field private s:Landroid/webkit/WebView;

.field private t:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v7/a/d;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->q:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->p:Z

    return v0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 113
    const v0, 0x7f030047

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->setContentView(I)V

    .line 114
    const v0, 0x7f0d00be

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->t:Landroid/widget/FrameLayout;

    .line 115
    const v0, 0x7f0d00bf

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->q:Landroid/widget/ProgressBar;

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->s:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    .line 117
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->s:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->s:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->s:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->s:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->s:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->s:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/android/gms/common/ui/a;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/ui/a;-><init>(Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->s:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/android/gms/common/ui/b;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/ui/b;-><init>(Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->s:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 119
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->t:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->s:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 120
    return-void

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->r:Ljava/lang/String;

    const-string v2, "Url must be set"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/common/util/y;

    invoke-direct {v2, p0, v0, v1, p0}, Lcom/google/android/gms/common/util/y;-><init>(Landroid/support/v4/app/j;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/util/ab;)V

    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/util/y;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->s:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->finish()V

    .line 225
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->s:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->s:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-super {p0}, Landroid/support/v7/a/d;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->s:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->t:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 182
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/a/d;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 184
    invoke-direct {p0}, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->f()V

    .line 185
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 71
    invoke-super {p0, p1}, Landroid/support/v7/a/d;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const-string v0, "com.google.android.gms"

    invoke-static {p0}, Lcom/google/android/gms/common/util/e;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->setResult(I)V

    .line 78
    invoke-virtual {p0}, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->finish()V

    .line 110
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->r:Ljava/lang/String;

    .line 85
    const-string v3, "AuthWebviewAccountName"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->n:Ljava/lang/String;

    .line 86
    const-string v3, "AuthWebviewUseAuthentication"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->o:Z

    .line 87
    const-string v3, "AuthWebviewShowProgressBar"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->p:Z

    .line 88
    const-string v3, "AuthWebviewTitle"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 89
    const-string v4, "AuthWebviewHomeAsUpEnabled"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 90
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    move v0, v2

    .line 92
    :goto_1
    invoke-super {p0}, Landroid/support/v7/a/d;->d()Landroid/support/v7/a/e;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/a/e;->b()Landroid/support/v7/a/a;

    move-result-object v5

    .line 93
    if-eqz v0, :cond_4

    .line 94
    invoke-virtual {v5, v4}, Landroid/support/v7/a/a;->a(Z)V

    .line 96
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    invoke-virtual {v5, v1}, Landroid/support/v7/a/a;->b(Z)V

    .line 102
    :goto_2
    invoke-virtual {v5}, Landroid/support/v7/a/a;->c()V

    .line 107
    :goto_3
    invoke-direct {p0}, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->f()V

    .line 109
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->setResult(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 90
    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {v5, v2}, Landroid/support/v7/a/a;->b(Z)V

    .line 100
    invoke-virtual {v5, v3}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 104
    :cond_4
    invoke-virtual {v5}, Landroid/support/v7/a/a;->d()V

    goto :goto_3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 210
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->finish()V

    .line 212
    const/4 v0, 0x1

    .line 214
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/support/v7/a/d;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 196
    iget-object v0, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->s:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 197
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/support/v7/a/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 190
    iget-object v0, p0, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->s:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 191
    return-void
.end method
