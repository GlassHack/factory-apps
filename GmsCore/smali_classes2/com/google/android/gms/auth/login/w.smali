.class final Lcom/google/android/gms/auth/login/w;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/login/BrowserActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/auth/login/BrowserActivity;)V
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Lcom/google/android/gms/auth/login/w;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/auth/login/BrowserActivity;B)V
    .locals 0

    .prologue
    .line 700
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/login/w;-><init>(Lcom/google/android/gms/auth/login/BrowserActivity;)V

    return-void
.end method


# virtual methods
.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    .prologue
    .line 716
    const/4 v0, 0x1

    return v0
.end method

.method public final onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/google/android/gms/auth/login/w;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    iget-object v0, v0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    iput-object v0, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 705
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 706
    const/4 v0, 0x1

    return v0
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .prologue
    .line 712
    return-void
.end method
