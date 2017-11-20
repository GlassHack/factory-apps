.class Lcom/google/android/common/GoogleWebContentHelper$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "GoogleWebContentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/GoogleWebContentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/common/GoogleWebContentHelper;


# direct methods
.method private constructor <init>(Lcom/google/android/common/GoogleWebContentHelper;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/google/android/common/GoogleWebContentHelper$MyWebViewClient;->this$0:Lcom/google/android/common/GoogleWebContentHelper;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/common/GoogleWebContentHelper;Lcom/google/android/common/GoogleWebContentHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/common/GoogleWebContentHelper;
    .param p2, "x1"    # Lcom/google/android/common/GoogleWebContentHelper$1;

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/google/android/common/GoogleWebContentHelper$MyWebViewClient;-><init>(Lcom/google/android/common/GoogleWebContentHelper;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper$MyWebViewClient;->this$0:Lcom/google/android/common/GoogleWebContentHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/common/GoogleWebContentHelper;->access$100(Lcom/google/android/common/GoogleWebContentHelper;Z)V

    .line 319
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper$MyWebViewClient;->this$0:Lcom/google/android/common/GoogleWebContentHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/common/GoogleWebContentHelper;->access$100(Lcom/google/android/common/GoogleWebContentHelper;Z)V

    .line 325
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper$MyWebViewClient;->this$0:Lcom/google/android/common/GoogleWebContentHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/common/GoogleWebContentHelper;->access$100(Lcom/google/android/common/GoogleWebContentHelper;Z)V

    .line 331
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper$MyWebViewClient;->this$0:Lcom/google/android/common/GoogleWebContentHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/common/GoogleWebContentHelper;->access$100(Lcom/google/android/common/GoogleWebContentHelper;Z)V

    .line 337
    return-void
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "cancelMsg"    # Landroid/os/Message;
    .param p3, "continueMsg"    # Landroid/os/Message;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper$MyWebViewClient;->this$0:Lcom/google/android/common/GoogleWebContentHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/common/GoogleWebContentHelper;->access$100(Lcom/google/android/common/GoogleWebContentHelper;Z)V

    .line 343
    return-void
.end method
