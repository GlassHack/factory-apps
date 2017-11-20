.class Lcom/google/android/gsf/WebAddAccountView$MyChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebAddAccountView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/WebAddAccountView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/WebAddAccountView;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/WebAddAccountView;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/android/gsf/WebAddAccountView$MyChromeClient;->this$0:Lcom/google/android/gsf/WebAddAccountView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/WebAddAccountView;Lcom/google/android/gsf/WebAddAccountView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gsf/WebAddAccountView;
    .param p2, "x1"    # Lcom/google/android/gsf/WebAddAccountView$1;

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/google/android/gsf/WebAddAccountView$MyChromeClient;-><init>(Lcom/google/android/gsf/WebAddAccountView;)V

    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dialog"    # Z
    .param p3, "userGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;

    .prologue
    .line 172
    const-string v0, "WebAddAccountView"

    const-string v1, "onCreateWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/google/android/gsf/WebAddAccountView$MyChromeClient;->this$0:Lcom/google/android/gsf/WebAddAccountView;

    invoke-static {v0}, Lcom/google/android/gsf/WebAddAccountView;->access$200(Lcom/google/android/gsf/WebAddAccountView;)Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 174
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/gsf/WebAddAccountView$MyChromeClient;->this$0:Lcom/google/android/gsf/WebAddAccountView;

    invoke-static {v0}, Lcom/google/android/gsf/WebAddAccountView;->access$300(Lcom/google/android/gsf/WebAddAccountView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 181
    return-void
.end method
