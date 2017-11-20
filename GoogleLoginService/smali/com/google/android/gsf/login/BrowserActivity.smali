.class public Lcom/google/android/gsf/login/BrowserActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/BrowserActivity$MyWebViewClient;,
        Lcom/google/android/gsf/login/BrowserActivity$MyChromeClient;
    }
.end annotation


# static fields
.field public static OAUTH_START_URL:Ljava/lang/String;

.field private static sGlsJS:Ljava/lang/Object;

.field public static sTestBrowser:Lcom/google/android/gsf/login/BrowserActivity;


# instance fields
.field private mBackgroundTaskStarted:Z

.field private mCookieManager:Landroid/webkit/CookieManager;

.field private mInteractivityCompleted:Z

.field private mIsInitialLoad:Z

.field private mIsLoading:Z

.field public mLastLoaded:Ljava/lang/String;

.field private mWaitingForNetwork:Z

.field mWebView:Lcom/google/android/gsf/login/CustomWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-string v0, "https://accounts.google.com/o/android/auth?"

    sput-object v0, Lcom/google/android/gsf/login/BrowserActivity;->OAUTH_START_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    .line 98
    iput-boolean v0, p0, Lcom/google/android/gsf/login/BrowserActivity;->mInteractivityCompleted:Z

    .line 101
    iput-boolean v0, p0, Lcom/google/android/gsf/login/BrowserActivity;->mBackgroundTaskStarted:Z

    .line 104
    iput-boolean v0, p0, Lcom/google/android/gsf/login/BrowserActivity;->mWaitingForNetwork:Z

    .line 313
    return-void
.end method

.method static synthetic access$202(Lcom/google/android/gsf/login/BrowserActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/login/BrowserActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/google/android/gsf/login/BrowserActivity;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$302(Lcom/google/android/gsf/login/BrowserActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/login/BrowserActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/google/android/gsf/login/BrowserActivity;->mIsInitialLoad:Z

    return p1
.end method

.method private setupOptionsAndCallbacks()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 273
    iget-object v1, p0, Lcom/google/android/gsf/login/BrowserActivity;->mWebView:Lcom/google/android/gsf/login/CustomWebView;

    new-instance v2, Lcom/google/android/gsf/login/BrowserActivity$MyWebViewClient;

    invoke-direct {v2, p0, v5}, Lcom/google/android/gsf/login/BrowserActivity$MyWebViewClient;-><init>(Lcom/google/android/gsf/login/BrowserActivity;Lcom/google/android/gsf/login/BrowserActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/login/CustomWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 274
    iget-object v1, p0, Lcom/google/android/gsf/login/BrowserActivity;->mWebView:Lcom/google/android/gsf/login/CustomWebView;

    new-instance v2, Lcom/google/android/gsf/login/BrowserActivity$MyChromeClient;

    invoke-direct {v2, p0, v5}, Lcom/google/android/gsf/login/BrowserActivity$MyChromeClient;-><init>(Lcom/google/android/gsf/login/BrowserActivity;Lcom/google/android/gsf/login/BrowserActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/login/CustomWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 275
    iget-object v1, p0, Lcom/google/android/gsf/login/BrowserActivity;->mWebView:Lcom/google/android/gsf/login/CustomWebView;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 276
    .local v0, "s":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 277
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 278
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 279
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 280
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 281
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 282
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 283
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 284
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 285
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 286
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 287
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 289
    iget-object v1, p0, Lcom/google/android/gsf/login/BrowserActivity;->mWebView:Lcom/google/android/gsf/login/CustomWebView;

    invoke-virtual {v1, v3}, Lcom/google/android/gsf/login/CustomWebView;->setMapTrackballToArrowKeys(Z)V

    .line 290
    iget-object v1, p0, Lcom/google/android/gsf/login/BrowserActivity;->mWebView:Lcom/google/android/gsf/login/CustomWebView;

    invoke-virtual {v1, v4}, Lcom/google/android/gsf/login/CustomWebView;->setFocusable(Z)V

    .line 291
    iget-object v1, p0, Lcom/google/android/gsf/login/BrowserActivity;->mWebView:Lcom/google/android/gsf/login/CustomWebView;

    invoke-virtual {v1, v4}, Lcom/google/android/gsf/login/CustomWebView;->setFocusableInTouchMode(Z)V

    .line 292
    return-void
.end method


# virtual methods
.method protected createWidgets()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 255
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/login/CustomWebView;

    iput-object v0, p0, Lcom/google/android/gsf/login/BrowserActivity;->mWebView:Lcom/google/android/gsf/login/CustomWebView;

    .line 257
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 258
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/login/BrowserActivity;->mCookieManager:Landroid/webkit/CookieManager;

    .line 259
    invoke-direct {p0}, Lcom/google/android/gsf/login/BrowserActivity;->setupOptionsAndCallbacks()V

    .line 261
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserActivity;->mWebView:Lcom/google/android/gsf/login/CustomWebView;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 264
    iget-object v2, p0, Lcom/google/android/gsf/login/BrowserActivity;->mWebView:Lcom/google/android/gsf/login/CustomWebView;

    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mSetupWizard:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/android/gsf/login/CustomWebView;->allowLongClicks(Z)V

    .line 266
    sget-object v0, Lcom/google/android/gsf/login/BrowserActivity;->sGlsJS:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserActivity;->mWebView:Lcom/google/android/gsf/login/CustomWebView;

    sget-object v1, Lcom/google/android/gsf/login/BrowserActivity;->sGlsJS:Ljava/lang/Object;

    const-string v2, "gls"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/login/CustomWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    :cond_0
    sput-object p0, Lcom/google/android/gsf/login/BrowserActivity;->sTestBrowser:Lcom/google/android/gsf/login/BrowserActivity;

    .line 270
    return-void

    :cond_1
    move v0, v1

    .line 264
    goto :goto_0
.end method

.method protected disableBackKey()Z
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .prologue
    .line 442
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserActivity;->mWebView:Lcom/google/android/gsf/login/CustomWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserActivity;->mWebView:Lcom/google/android/gsf/login/CustomWebView;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/CustomWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserActivity;->mWebView:Lcom/google/android/gsf/login/CustomWebView;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/CustomWebView;->goBack()V

    .line 448
    const/4 v0, 0x1

    .line 450
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getTitleId()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    if-eqz v0, :cond_0

    const v0, 0x7f0700f9

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0700fa

    goto :goto_0
.end method

.method protected hasMenu()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 212
    new-instance v0, Lcom/google/android/gsf/login/BrowserActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gsf/login/BrowserActivity$2;-><init>(Lcom/google/android/gsf/login/BrowserActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 218
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 379
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BrowserActivity;->setResult(I)V

    .line 380
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BrowserActivity;->finish()V

    .line 381
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 192
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BrowserActivity;->setContentView(I)V

    .line 134
    if-eqz p1, :cond_0

    .line 135
    const-string v0, "interactivity_completed"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BrowserActivity;->mInteractivityCompleted:Z

    .line 136
    const-string v0, "waiting_for_network"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BrowserActivity;->mWaitingForNetwork:Z

    .line 137
    const-string v0, "background_task_started"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BrowserActivity;->mBackgroundTaskStarted:Z

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BrowserActivity;->createWidgets()V

    .line 142
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BrowserActivity;->startWebLogin()V

    .line 143
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BrowserActivity;->getTitleId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BrowserActivity;->setTitle(I)V

    .line 144
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 150
    const v1, 0x7f07009b

    invoke-interface {p1, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 152
    .local v0, "item":Landroid/view/MenuItem;
    const v1, 0x7f020057

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 153
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/Compat;->menuItemSetShowAsAction(Landroid/view/MenuItem;I)V

    .line 154
    const/4 v1, 0x1

    return v1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 366
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 159
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 165
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 161
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BrowserActivity;->setResult(I)V

    .line 162
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BrowserActivity;->finish()V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPageLoadFinished(Ljava/lang/String;)V
    .locals 13
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 385
    iput-object p1, p0, Lcom/google/android/gsf/login/BrowserActivity;->mLastLoaded:Ljava/lang/String;

    .line 386
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v11

    invoke-virtual {v11, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 387
    .local v3, "cookies":Ljava/lang/String;
    const/4 v0, 0x0

    .line 388
    .local v0, "accessToken":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 389
    const-string v11, "\\;"

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v2, v1, v5

    .line 390
    .local v2, "cookie":Ljava/lang/String;
    const/16 v11, 0x3d

    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 391
    .local v4, "equals":I
    if-ltz v4, :cond_4

    .line 392
    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 393
    .local v8, "name":Ljava/lang/String;
    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 394
    .local v9, "value":Ljava/lang/String;
    const-string v11, "oauth_token"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 395
    move-object v0, v9

    .line 402
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "cookie":Ljava/lang/String;
    .end local v4    # "equals":I
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    move v6, v10

    .line 403
    .local v6, "isAccessTokenPresent":Z
    :cond_1
    if-eqz v6, :cond_2

    .line 404
    iput-boolean v10, p0, Lcom/google/android/gsf/login/BrowserActivity;->mInteractivityCompleted:Z

    .line 406
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onPageLoadFinished(): is access token present?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " url: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/google/android/gsf/login/BrowserActivity;->log(Ljava/lang/String;)V

    .line 410
    iget-boolean v11, p0, Lcom/google/android/gsf/login/BrowserActivity;->mInteractivityCompleted:Z

    if-eqz v11, :cond_3

    .line 414
    iget-boolean v11, p0, Lcom/google/android/gsf/login/BrowserActivity;->mBackgroundTaskStarted:Z

    if-nez v11, :cond_3

    .line 415
    iput-boolean v10, p0, Lcom/google/android/gsf/login/BrowserActivity;->mBackgroundTaskStarted:Z

    .line 416
    iget-object v10, p0, Lcom/google/android/gsf/login/BrowserActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-object v0, v10, Lcom/google/android/gsf/loginservice/GLSSession;->mAccessToken:Ljava/lang/String;

    .line 419
    iget-object v10, p0, Lcom/google/android/gsf/login/BrowserActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    .line 420
    iget-object v10, p0, Lcom/google/android/gsf/login/BrowserActivity;->mWebView:Lcom/google/android/gsf/login/CustomWebView;

    invoke-virtual {v10}, Lcom/google/android/gsf/login/CustomWebView;->clearView()V

    .line 421
    const/4 v10, -0x1

    invoke-virtual {p0, v10}, Lcom/google/android/gsf/login/BrowserActivity;->setResult(I)V

    .line 422
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BrowserActivity;->finish()V

    .line 425
    :cond_3
    return-void

    .line 389
    .end local v6    # "isAccessTokenPresent":Z
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "cookie":Ljava/lang/String;
    .restart local v4    # "equals":I
    .restart local v5    # "i$":I
    .restart local v7    # "len$":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BrowserActivity;->stop()V

    .line 433
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onPause()V

    .line 434
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 182
    const-string v0, "interactivity_completed"

    iget-boolean v1, p0, Lcom/google/android/gsf/login/BrowserActivity;->mInteractivityCompleted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 183
    const-string v0, "waiting_for_network"

    iget-boolean v1, p0, Lcom/google/android/gsf/login/BrowserActivity;->mWaitingForNetwork:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 184
    const-string v0, "background_task_started"

    iget-boolean v1, p0, Lcom/google/android/gsf/login/BrowserActivity;->mBackgroundTaskStarted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 185
    return-void
.end method

.method public onWebLoginError(Lcom/google/android/gms/auth/firstparty/shared/Status;ILjava/lang/String;)V
    .locals 2
    .param p1, "error"    # Lcom/google/android/gms/auth/firstparty/shared/Status;
    .param p2, "code"    # I
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 372
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/BrowserActivity;->createErrorIntent(Lcom/google/android/gms/auth/firstparty/shared/Status;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3f1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/BrowserActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    .line 373
    return-void
.end method

.method protected startWebLogin()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 226
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 227
    .local v2, "locale":Ljava/util/Locale;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&lang="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "extra":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&langCountry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 231
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    .line 232
    iget v4, v0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v4, :cond_0

    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&mcc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/res/Configuration;->mcc:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&xoauth_display_name=Android%20Phone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&cc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gsf/login/BrowserActivity;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    iget-object v4, p0, Lcom/google/android/gsf/login/BrowserActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mUrl:Ljava/lang/String;

    if-nez v4, :cond_1

    sget-object v3, Lcom/google/android/gsf/login/BrowserActivity;->OAUTH_START_URL:Ljava/lang/String;

    .line 239
    .local v3, "startUrl":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&source=android"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 240
    iget-object v4, p0, Lcom/google/android/gsf/login/BrowserActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 241
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&Email="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gsf/login/BrowserActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v5, v5, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&tmpl=reauth"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 247
    :goto_1
    iput-boolean v6, p0, Lcom/google/android/gsf/login/BrowserActivity;->mIsLoading:Z

    .line 248
    iput-boolean v6, p0, Lcom/google/android/gsf/login/BrowserActivity;->mIsInitialLoad:Z

    .line 249
    iget-object v4, p0, Lcom/google/android/gsf/login/BrowserActivity;->mCookieManager:Landroid/webkit/CookieManager;

    invoke-virtual {v4}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 251
    iget-object v4, p0, Lcom/google/android/gsf/login/BrowserActivity;->mWebView:Lcom/google/android/gsf/login/CustomWebView;

    invoke-virtual {v4, v3}, Lcom/google/android/gsf/login/CustomWebView;->loadUrl(Ljava/lang/String;)V

    .line 252
    return-void

    .line 237
    .end local v3    # "startUrl":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/google/android/gsf/login/BrowserActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v3, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mUrl:Ljava/lang/String;

    goto :goto_0

    .line 244
    .restart local v3    # "startUrl":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&tmpl=new_account"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BrowserActivity;->mIsLoading:Z

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserActivity;->mWebView:Lcom/google/android/gsf/login/CustomWebView;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/CustomWebView;->stopLoading()V

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BrowserActivity;->mIsLoading:Z

    .line 361
    :cond_0
    return-void
.end method
