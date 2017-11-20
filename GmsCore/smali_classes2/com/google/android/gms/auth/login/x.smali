.class final Lcom/google/android/gms/auth/login/x;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/login/BrowserActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/auth/login/BrowserActivity;)V
    .locals 0

    .prologue
    .line 720
    iput-object p1, p0, Lcom/google/android/gms/auth/login/x;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/auth/login/BrowserActivity;B)V
    .locals 0

    .prologue
    .line 720
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/login/x;-><init>(Lcom/google/android/gms/auth/login/BrowserActivity;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 775
    iget-object v0, p0, Lcom/google/android/gms/auth/login/x;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    iget-object v0, v0, Lcom/google/android/gms/auth/login/BrowserActivity;->z:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    const-string v1, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPageFinished( "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/android/gms/auth/login/BrowserActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/google/android/gms/auth/login/x;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/login/BrowserActivity;->d(Ljava/lang/String;)V

    .line 778
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 744
    iget-object v0, p0, Lcom/google/android/gms/auth/login/x;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    iget-object v0, v0, Lcom/google/android/gms/auth/login/BrowserActivity;->z:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    const-string v1, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPageStarted( "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/android/gms/auth/login/BrowserActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Lcom/google/android/gms/auth/login/x;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/login/BrowserActivity;->e(Lcom/google/android/gms/auth/login/BrowserActivity;)Lcom/google/android/gms/auth/login/h;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/auth/login/BrowserActivity;->a(Ljava/lang/String;Lcom/google/android/gms/auth/login/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/google/android/gms/auth/login/x;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/BrowserActivity;->j()V

    .line 751
    :goto_0
    return-void

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/login/x;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/BrowserActivity;->k()V

    goto :goto_0
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 756
    const-string v0, "GLSActivity"

    const-string v1, "onReceivedError: errorCode %d, description: %s, url: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v0, p0, Lcom/google/android/gms/auth/login/x;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/login/BrowserActivity;->h(Lcom/google/android/gms/auth/login/BrowserActivity;)Z

    .line 761
    iget-object v0, p0, Lcom/google/android/gms/auth/login/x;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->H:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/BrowserActivity;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)V

    .line 762
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 763
    return-void
.end method

.method public final onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 768
    const-string v0, "GLSActivity"

    const-string v1, "onTooManyRedirects"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v0, p0, Lcom/google/android/gms/auth/login/x;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->H:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/BrowserActivity;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)V

    .line 771
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 730
    iget-object v0, p0, Lcom/google/android/gms/auth/login/x;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/login/BrowserActivity;->d(Lcom/google/android/gms/auth/login/BrowserActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/google/android/gms/auth/login/x;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/login/BrowserActivity;->e(Lcom/google/android/gms/auth/login/BrowserActivity;)Lcom/google/android/gms/auth/login/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/login/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 732
    iget-object v0, p0, Lcom/google/android/gms/auth/login/x;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    iget-object v0, v0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    const-string v1, "mm"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/CustomWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/google/android/gms/auth/login/x;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    invoke-static {v0, v3}, Lcom/google/android/gms/auth/login/BrowserActivity;->d(Lcom/google/android/gms/auth/login/BrowserActivity;Z)Z

    .line 739
    :cond_0
    :goto_0
    return v3

    .line 734
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/login/x;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/login/BrowserActivity;->f(Lcom/google/android/gms/auth/login/BrowserActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/google/android/gms/auth/login/x;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    iget-object v0, v0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/x;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    invoke-static {v1}, Lcom/google/android/gms/auth/login/BrowserActivity;->g(Lcom/google/android/gms/auth/login/BrowserActivity;)Lcom/google/android/gms/auth/login/as;

    move-result-object v1

    const-string v2, "mm"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/login/CustomWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/google/android/gms/auth/login/x;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/login/BrowserActivity;->d(Lcom/google/android/gms/auth/login/BrowserActivity;Z)Z

    goto :goto_0
.end method
