.class Lcom/google/android/gsf/login/BrowserActivity$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/BrowserActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/login/BrowserActivity;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/google/android/gsf/login/BrowserActivity$MyWebViewClient;->this$0:Lcom/google/android/gsf/login/BrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/login/BrowserActivity;Lcom/google/android/gsf/login/BrowserActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gsf/login/BrowserActivity;
    .param p2, "x1"    # Lcom/google/android/gsf/login/BrowserActivity$1;

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lcom/google/android/gsf/login/BrowserActivity$MyWebViewClient;-><init>(Lcom/google/android/gsf/login/BrowserActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserActivity$MyWebViewClient;->this$0:Lcom/google/android/gsf/login/BrowserActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/BrowserActivity;->access$302(Lcom/google/android/gsf/login/BrowserActivity;Z)Z

    .line 350
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserActivity$MyWebViewClient;->this$0:Lcom/google/android/gsf/login/BrowserActivity;

    invoke-virtual {v0, p2}, Lcom/google/android/gsf/login/BrowserActivity;->onPageLoadFinished(Ljava/lang/String;)V

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/loginservice/GLSHelper;->log(Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 325
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 330
    const-string v0, "GLSActivity"

    const-string v1, "onReceivedError: errorCode %d, description: %s, url: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserActivity$MyWebViewClient;->this$0:Lcom/google/android/gsf/login/BrowserActivity;

    invoke-static {v0, v4}, Lcom/google/android/gsf/login/BrowserActivity;->access$202(Lcom/google/android/gsf/login/BrowserActivity;Z)Z

    .line 335
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserActivity$MyWebViewClient;->this$0:Lcom/google/android/gsf/login/BrowserActivity;

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/Status;->SERVER_ERROR:Lcom/google/android/gms/auth/firstparty/shared/Status;

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gsf/login/BrowserActivity;->onWebLoginError(Lcom/google/android/gms/auth/firstparty/shared/Status;ILjava/lang/String;)V

    .line 337
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "cancelMsg"    # Landroid/os/Message;
    .param p3, "continueMsg"    # Landroid/os/Message;

    .prologue
    .line 342
    const-string v0, "GLSActivity"

    const-string v1, "onTooManyRedirects"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserActivity$MyWebViewClient;->this$0:Lcom/google/android/gsf/login/BrowserActivity;

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/Status;->SERVER_ERROR:Lcom/google/android/gms/auth/firstparty/shared/Status;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gsf/login/BrowserActivity;->onWebLoginError(Lcom/google/android/gms/auth/firstparty/shared/Status;ILjava/lang/String;)V

    .line 345
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method
