.class Lcom/google/android/gsf/login/BrowserActivity$MyChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/BrowserActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/login/BrowserActivity;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/android/gsf/login/BrowserActivity$MyChromeClient;->this$0:Lcom/google/android/gsf/login/BrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/login/BrowserActivity;Lcom/google/android/gsf/login/BrowserActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gsf/login/BrowserActivity;
    .param p2, "x1"    # Lcom/google/android/gsf/login/BrowserActivity$1;

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/google/android/gsf/login/BrowserActivity$MyChromeClient;-><init>(Lcom/google/android/gsf/login/BrowserActivity;)V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 309
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dialog"    # Z
    .param p3, "userGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserActivity$MyChromeClient;->this$0:Lcom/google/android/gsf/login/BrowserActivity;

    iget-object v0, v0, Lcom/google/android/gsf/login/BrowserActivity;->mWebView:Lcom/google/android/gsf/login/CustomWebView;

    iput-object v0, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 299
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 305
    return-void
.end method
